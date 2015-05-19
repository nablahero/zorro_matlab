function [ state_out ] = add_key( state_in, key )
%ADD_KEY Summary of this function goes here
%   Detailed explanation goes here

state_out = bitxor(state_in, key);

