# -*- coding: utf-8 -*-
# @File    : iperf_script.py
# @Date    : 2022-02-10
# @Author  : chenwei    -剑衣沉沉晚霞归，酒杖津津神仙来-
# @From    :
import argparse
import shutil
from pathlib import Path
import numpy as np


def read_npy(file=None):
    if file is None:
        file = args.file
    tms = np.load(file)
    return tms


# def create_script(tms, per_tm_tos=True, start_tos=0):
#     """
#     tms: numpy array of shape (num_nodes, num_nodes, num_tms)
#     drop_tos: 要跳过的 TOS（你的控制器里通常是 192）
#     per_tm_tos: True=每个 TM 内从 start_tos 开始；False=跨 TM 全局连续递增
#     start_tos: TOS 起始值
#     """
#     label = 0
#     # tms: (num_nodes, num_nodes, num_tms) -> (num_tms, num_nodes, num_nodes)
#     tms = np.transpose(tms, (2, 0, 1))
#     global_tos_counter = start_tos  # 仅在 per_tm_tos=False 时跨 TM 传递
    
#     for tm in tms:
#         # FOR CREATING FOLDERS PER TRAFFIC MATRIX
#         Path(f'./iperfTM/TM-{label}').mkdir(parents=True, exist_ok=True)
#         nameTM = Path(f'./iperfTM/TM-{label}')
#         label += 1
#         print('------', nameTM)
#         Path.mkdir(nameTM, exist_ok=True)

#         # --------------------FLOWS--------------------------
#         # FOR CREATING FOLDERS PER NODE
#         for i in range(len(tm[0])):
#             Path.mkdir(nameTM / Path('Clients'), exist_ok=True)
#             Path.mkdir(nameTM / Path('Servers'), exist_ok=True)

#         # Default parameters
#         time_duration = args.time_duration
#         port = args.port
#         ip_dest = args.ip_dest
#         throughput = args.throughput  # take it in kbps from TM

#         # UDP with time = 10s
#         #   -c: ip_destination
#         #   -b: throughput in k,m or g (Kbps, Mbps or Gbps)
#         #   -t: time in seconds

#         # SERVER SIDE
#         # iperf3 -s

#         # CLIENT SIDE with iperf3
#         # iperf3 -c <ip_dest> -u -p <port> -b <throughput> -t <duration> -V -J

#         # As we do not consider throughput in the same node, when src=dest the thro = 0
#         for src in range(len(tm[0])):
#             for dst in range(len(tm[0])):
#                 if src == dst:
#                     print("src: ", src, "dst: ", dst)
#                     tm[src][dst] = 0.0

#         # ——TOS 计数器（每个 TM 内从 1 开始；或全局递增）
#         tos_counter = start_tos if per_tm_tos else global_tos_counter
        
#         for src in range(1, len(tm[0]) + 1):
#             with open(str(nameTM) + "/Clients/client_{0}.sh".format(str(src)), 'w') as fileClient:
#                 outputstring_a1 = "#!/bin/bash \necho Generating traffic..."
#                 fileClient.write(outputstring_a1)
#                 for dst in range(1, len(tm[0]) + 1):
#                     throughput = float(tm[src - 1][dst - 1])
#                     # throughput_g = throughput / (100) # scale the throughput value to mininet link capacities
#                     temp1 = ''
#                     if src != dst:
#                         temp1 = ''
#                         temp1 += '\n'
#                         temp1 += 'iperf3 -c '
#                         temp1 += '10.0.0.{0} '.format(str(dst))
#                         if dst > 9:
#                             temp1 += '-p {0}0{1} '.format(str(src), str(dst))
#                         else:
#                             temp1 += '-p {0}00{1} '.format(str(src), str(dst))
#                         temp1 += '-u -b ' + str(format(throughput, '.2f')) + 'k'
#                         # temp1 += ' -w 256k -t ' + str(time_duration)
#                         temp1 += ' -t ' + str(time_duration)
#                         temp1 += ' >/dev/null 2>&1 &\n'  # & at the end of the line it's for running the process in bkg
#                         temp1 += 'sleep 0.4'
#                     fileClient.write(temp1)

#         # print(na)
#         for dst in range(len(tm[0])):
#             dst_ = dst + 1
#             with open(str(nameTM) + "/Servers/server_{0}.sh".format(str(dst_)), 'w') as fileServer:
#                 outputstring_a2 = '#!/bin/bash \necho Initializing server listening...'
#                 fileServer.write(outputstring_a2)
#                 for src in range(len(tm[0])):
#                     src_ = src + 1
#                     temp2 = ''
#                     if src != dst:
#                         # n = n+1
#                         temp2 = ''
#                         temp2 += '\n'
#                         temp2 += 'iperf3 -s '
#                         if dst_ > 9:
#                             temp2 += '-p {0}0{1} '.format(str(src_), str(dst_))
#                         else:
#                             temp2 += '-p {0}00{1} '.format(str(src_), str(dst_))
#                         temp2 += '-1'
#                         temp2 += ' >/dev/null 2>&1 &\n'  # & at the end of the line it's for running the process in bkg
#                         temp2 += 'sleep 0.3'
#                     fileServer.write(temp2)

from pathlib import Path
import numpy as np

def create_script(tms, *, drop_tos=192, per_tm_tos=True, start_tos=1):
    """
    tms: numpy array of shape (num_nodes, num_nodes, num_tms)
    drop_tos: 要跳过的 TOS（你的控制器里通常是 192）
    per_tm_tos: True=每个 TM 内从 start_tos 开始；False=跨 TM 全局连续递增
    start_tos: TOS 起始值
    """
    label = 0
    # (num_nodes, num_nodes, num_tms) -> (num_tms, num_nodes, num_nodes)
    tms = np.transpose(tms, (2, 0, 1))
    global_tos_counter = start_tos  # 仅在 per_tm_tos=False 时跨 TM 传递

    for tm in tms:
        # FOR CREATING FOLDERS PER TRAFFIC MATRIX
        nameTM = Path(f'./iperfTM/TM-{label}')
        label += 1
        print('------', nameTM)
        Path.mkdir(nameTM, parents=True, exist_ok=True)

        # --------------------FLOWS--------------------------
        # FOR CREATING FOLDERS PER NODE
        Path.mkdir(nameTM / 'Clients', exist_ok=True)
        Path.mkdir(nameTM / 'Servers', exist_ok=True)

        # Default parameters
        time_duration = args.time_duration
        port = args.port
        ip_dest = args.ip_dest
        # throughput 从 TM 取（单位 kbps）

        # 不考虑同节点通信：对角线清零
        N = tm.shape[0]
        for src in range(N):
            tm[src, src] = 0.0

        # ——TOS 计数器（每个 TM 内从 1 开始；或全局递增）
        tos_counter = start_tos if per_tm_tos else global_tos_counter

        # CLIENTS
        for src in range(1, N + 1):
            with open(str(nameTM / f"Clients/client_{src}.sh"), 'w') as fileClient:
                fileClient.write("#!/bin/bash \necho Generating traffic...")
                for dst in range(1, N + 1):
                    if src == dst:
                        continue  # 本行不发流，也不占用 TOS

                    throughput_kbps = float(tm[src - 1][dst - 1])

                    # 端口规则保持不变
                    if dst > 9:
                        port_str = f"{src}0{dst}"
                    else:
                        port_str = f"{src}00{dst}"

                    # ——分配 TOS：逐行递增，跳过 drop_tos（通常是 192）
                    tval = tos_counter
                    if tval == drop_tos:
                        tval += 1
                    tos_counter = tval + 1

                    # 安全保护：避免超过 255（根据你的规模一般用不到）
                    if tval > 255:
                        raise ValueError(
                            f"TOS 超出 255（当前 {tval}）。请减少节点数/改为 per_tm_tos 或调整起始值。"
                        )

                    # 生成命令（把 --tos 放在重定向前面）
                    cmd = (
                        "\n"
                        f"iperf3 -c 192.168.0.{dst} -p {port_str} -u "
                        f"-b {format(throughput_kbps, '.2f')}k "
                        f"-t {time_duration} --tos {tval} "
                        ">/dev/null 2>&1 &\n"
                        "sleep 0.4"
                    )
                    fileClient.write(cmd)

        # SERVERS（不需要 TOS）
        for dst in range(N):
            dst_ = dst + 1
            with open(str(nameTM / f"Servers/server_{dst_}.sh"), 'w') as fileServer:
                fileServer.write('#!/bin/bash \necho Initializing server listening...')
                for src in range(N):
                    src_ = src + 1
                    if src == dst:
                        continue
                    if dst_ > 9:
                        port_str = f"{src_}0{dst_}"
                    else:
                        port_str = f"{src_}00{dst_}"
                    cmd = (
                        "\n"
                        f"iperf3 -s -p {port_str} -1 "
                        ">/dev/null 2>&1 &\n"
                        "sleep 0.3"
                    )
                    fileServer.write(cmd)

        # 跨 TM 连续递增：把本 TM 的计数回写到全局
        if not per_tm_tos:
            global_tos_counter = tos_counter



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Generate traffic matrices")
    parser.add_argument("--seed", default=2020, help="random seed")
    # time_duration = 30
    #     port = 2022
    #     ip_dest = "10.0.0.1"
    #     throughput = 0.0  # take it in kbps from TM
    parser.add_argument("--time_duration", default=30, help="time_duration")
    parser.add_argument("--port", default=2022, help="port")
    parser.add_argument("--ip_dest", default="10.0.0.1", help="ip_dest")
    parser.add_argument("--throughput", default=0.0, help="take it in kbps from TM")
    parser.add_argument("--file",
                        default=r'tm_statistic/communicate_tm.npy',
                        help="take it in kbps from TM")
    args = parser.parse_args()
    shutil.rmtree("iperfTM")
    tms = read_npy()
    create_script(tms)
