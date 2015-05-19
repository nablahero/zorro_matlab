function [ ciphertext ] = zorro_cipher( plaintext, input_key )

state = reshape(plaintext, 4, 4);
key = reshape(input_key, 4, 4);
disp_hex('Plaintext', state);
disp_hex('Key', key);
[poly, inv_poly] = poly_mat_gen();

round = 1;

for i=0:5
   state = add_key(state, key);
   for j = 0:3
       display(sprintf('Round %d ', round));
       disp_hex('', state);
       state = substitution(state);
       disp_hex('After SubBytes', state);
       state = add_constant(state, round);
       disp_hex('After AddConstant', state);
       state = shift_rows(state);
       disp_hex('After Shiftrows', state);
       state = mix_columns(state, poly);
       disp_hex('After MixColumns', state);
       round = round + 1;
   end;
end;

state = add_key(state, key);

ciphertext = state;
disp_hex('result', state);