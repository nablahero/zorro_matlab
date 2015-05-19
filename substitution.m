function [ state_out ] = substitution( state_in )
%SUBSTITUTION Summary of this function goes here
%   Detailed explanation goes here


state_out = state_in;
state_out(1) = sub_bytes(state_in(1));
state_out(5) = sub_bytes(state_in(5));
state_out(9) = sub_bytes(state_in(9));
state_out(13) = sub_bytes(state_in(13));

