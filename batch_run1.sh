
#! /bin/bash

#python main.py -model=gcn -num_layers=3 >>gcn_3layer.txt
##python main.py -model=gcn -num_layers=6 -learning_rate=1e-3 >>gcn_6layer_1e-3.txt
#python main.py -model=agcn -softmax=neibor -tau=1 -percent=0.5 >>agcn_tau1_k0.5.txt
#python main.py -model=agcn -softmax=neibor -tau=5 -percent=0.5 >>agcn_tau5_k0.5.txt
#python main.py -model=agcn -softmax=neibor -tau=5 -percent=0.3 >>agcn_tau5_k0.3.txt
#python main.py -model=agcn -softmax=neibor -tau=5 -percent=0.2 >>agcn_tau5_k0.2.txt
#python main.py -model=agcn -softmax=neibor -tau=5 -percent=0.75 >>agcn_tau5_k0.75.txt
#python main.py -model=agcn -softmax=neibor -tau=10 -percent=0.5 >>agcn_tau10_k0.5.txt
#python main.py -model=agcn -softmax=neibor -tau=20 -percent=0.5 >>agcn_tau20_k0.5.txt

python main.py -softmax=global -adj_norm=none -name=normal -eps=1e-10 
python main.py -softmax=global -adj_norm=diag -name=normal -eps=1e-10
python main.py -softmax=global -adj_norm=tanh -name=normal -eps=1e-10
python main.py -softmax=global -adj_norm=mix -name=normal -eps=1e-10
