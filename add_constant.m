function [ state_out ] = add_constant( state_in, round )
%ADD_CONSTANT Summary of this function goes here
%   Detailed explanation goes here

state_out = state_in;
state_out(1) = bitxor(state_in(1),round);
state_out(5) = bitxor(state_in(5),round);
state_out(9) = bitxor(state_in(9),round);
state_out(13) = bitxor(state_in(13),bitsll(round, 3));

