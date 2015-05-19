plaintext = [hex2dec('32'), hex2dec('43'), hex2dec('f6'), hex2dec('a8'), hex2dec('88'), hex2dec('5a'), hex2dec('30'), hex2dec('8d'), hex2dec('31'), hex2dec('31'), hex2dec('98'), hex2dec('a2'), hex2dec('e0'), hex2dec('37'), hex2dec('07'), hex2dec('34')];
key = [hex2dec('2b'), hex2dec('7e'), hex2dec('15'), hex2dec('16'), hex2dec('28'), hex2dec('ae'), hex2dec('d2'), hex2dec('a6'), hex2dec('ab'), hex2dec('f7'), hex2dec('15'), hex2dec('88'), hex2dec('09'), hex2dec('cf'), hex2dec('4f'), hex2dec('3c')];

ciphertext = zorro_cipher(plaintext, key);