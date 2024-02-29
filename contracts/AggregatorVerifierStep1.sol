// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

contract AggregatorVerifierCoreStep1 {
    function verify_proof(
        uint256[] calldata transcript,
        uint256[] calldata aux,
        uint256[] memory buf
    ) public view returns (uint256[] memory)  {
        buf[16] = mulmod(buf[8], buf[8], AggregatorLib.p_mod);
buf[17] = mulmod(buf[16], buf[16], AggregatorLib.p_mod);
buf[18] = mulmod(buf[16], buf[8], AggregatorLib.p_mod);
(buf[170], buf[171]) = (1, 2);
buf[172] = 0;
AggregatorLib.ecc_mul(buf, 170);
(buf[172], buf[173]) = (transcript[128], transcript[129]);
buf[174] = buf[17];
AggregatorLib.ecc_mul_add(buf, 170);
(buf[172], buf[173]) = (transcript[130], transcript[131]);
buf[174] = buf[18];
AggregatorLib.ecc_mul_add(buf, 170);
(buf[172], buf[173]) = (transcript[132], transcript[133]);
buf[174] = buf[16];
AggregatorLib.ecc_mul_add(buf, 170);
(buf[172], buf[173]) = (transcript[134], transcript[135]);
buf[174] = buf[8];
AggregatorLib.ecc_mul_add(buf, 170);
(buf[172], buf[173]) = (transcript[136], transcript[137]);
buf[174] = 1;
AggregatorLib.ecc_mul_add(buf, 170);
buf[19] = mulmod(buf[7], buf[7], AggregatorLib.p_mod);
buf[20] = mulmod(buf[17], buf[19], AggregatorLib.p_mod);
buf[21] = mulmod(buf[20], buf[7], AggregatorLib.p_mod);
buf[22] = mulmod(buf[17], buf[7], AggregatorLib.p_mod);
buf[23] = mulmod(buf[18], buf[19], AggregatorLib.p_mod);
buf[24] = mulmod(buf[18], buf[7], AggregatorLib.p_mod);
buf[25] = addmod(addmod(addmod(addmod(mulmod(buf[21], transcript[110], AggregatorLib.p_mod), mulmod(buf[20], transcript[107], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[22], transcript[104], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[17], transcript[101], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(addmod(mulmod(buf[23], transcript[116], AggregatorLib.p_mod), mulmod(buf[24], transcript[121], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[18], transcript[126], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[26] = mulmod(buf[19], buf[19], AggregatorLib.p_mod);
buf[27] = mulmod(buf[26], buf[26], AggregatorLib.p_mod);
buf[28] = mulmod(buf[27], buf[27], AggregatorLib.p_mod);
buf[29] = mulmod(buf[16], mulmod(buf[28], buf[28], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[30] = mulmod(buf[29], buf[28], AggregatorLib.p_mod);
buf[31] = mulmod(buf[30], buf[26], AggregatorLib.p_mod);
buf[32] = mulmod(buf[30], buf[19], AggregatorLib.p_mod);
buf[33] = mulmod(buf[32], buf[7], AggregatorLib.p_mod);
buf[34] = mulmod(buf[30], buf[7], AggregatorLib.p_mod);
buf[35] = addmod(addmod(addmod(addmod(mulmod(buf[31], transcript[56], AggregatorLib.p_mod), mulmod(buf[33], transcript[57], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[32], transcript[58], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[34], transcript[59], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[30], transcript[60], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[36] = mulmod(buf[29], buf[27], AggregatorLib.p_mod);
buf[37] = mulmod(buf[36], buf[26], AggregatorLib.p_mod);
buf[38] = mulmod(buf[37], buf[19], AggregatorLib.p_mod);
buf[39] = mulmod(buf[38], buf[7], AggregatorLib.p_mod);
buf[40] = mulmod(buf[37], buf[7], AggregatorLib.p_mod);
buf[41] = addmod(addmod(addmod(addmod(buf[35], mulmod(buf[39], transcript[61], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[38], transcript[63], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[40], transcript[64], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[37], transcript[65], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[42] = mulmod(buf[36], buf[19], AggregatorLib.p_mod);
buf[43] = mulmod(buf[42], buf[7], AggregatorLib.p_mod);
buf[44] = mulmod(buf[36], buf[7], AggregatorLib.p_mod);
buf[45] = addmod(addmod(addmod(addmod(buf[41], mulmod(buf[43], transcript[66], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[42], transcript[67], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[44], transcript[99], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[36], transcript[102], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[46] = mulmod(buf[29], buf[26], AggregatorLib.p_mod);
buf[47] = mulmod(buf[46], buf[19], AggregatorLib.p_mod);
buf[48] = mulmod(buf[47], buf[7], AggregatorLib.p_mod);
buf[49] = mulmod(buf[46], buf[7], AggregatorLib.p_mod);
buf[50] = addmod(addmod(addmod(addmod(buf[45], mulmod(buf[48], transcript[105], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[47], transcript[108], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[49], transcript[111], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[46], transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[51] = mulmod(buf[29], buf[19], AggregatorLib.p_mod);
buf[52] = mulmod(buf[51], buf[7], AggregatorLib.p_mod);
buf[53] = mulmod(buf[29], buf[7], AggregatorLib.p_mod);
buf[54] = addmod(addmod(addmod(addmod(buf[50], mulmod(buf[52], transcript[115], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[51], transcript[117], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[53], transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[29], transcript[120], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[55] = mulmod(buf[16], buf[28], AggregatorLib.p_mod);
buf[56] = mulmod(buf[55], buf[27], AggregatorLib.p_mod);
buf[57] = mulmod(buf[56], buf[26], AggregatorLib.p_mod);
buf[58] = mulmod(buf[57], buf[19], AggregatorLib.p_mod);
buf[59] = mulmod(buf[58], buf[7], AggregatorLib.p_mod);
buf[60] = mulmod(buf[57], buf[7], AggregatorLib.p_mod);
buf[61] = addmod(addmod(addmod(addmod(buf[54], mulmod(buf[59], transcript[122], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[58], transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[60], transcript[125], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[57], transcript[127], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[62] = mulmod(buf[56], buf[19], AggregatorLib.p_mod);
buf[63] = mulmod(buf[62], buf[7], AggregatorLib.p_mod);
buf[64] = mulmod(buf[56], buf[7], AggregatorLib.p_mod);
buf[65] = addmod(addmod(addmod(addmod(buf[61], mulmod(buf[63], transcript[72], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[62], transcript[73], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[64], transcript[74], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[56], transcript[75], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[66] = mulmod(buf[55], buf[26], AggregatorLib.p_mod);
buf[67] = mulmod(buf[66], buf[19], AggregatorLib.p_mod);
buf[68] = mulmod(buf[67], buf[7], AggregatorLib.p_mod);
buf[69] = mulmod(buf[66], buf[7], AggregatorLib.p_mod);
buf[70] = addmod(addmod(addmod(addmod(buf[65], mulmod(buf[68], transcript[76], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[67], transcript[77], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[69], transcript[78], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[66], transcript[79], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[71] = mulmod(buf[55], buf[19], AggregatorLib.p_mod);
buf[72] = mulmod(buf[71], buf[7], AggregatorLib.p_mod);
buf[73] = mulmod(buf[55], buf[7], AggregatorLib.p_mod);
buf[74] = addmod(addmod(addmod(addmod(buf[70], mulmod(buf[72], transcript[80], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[71], transcript[81], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[73], transcript[82], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[55], transcript[83], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[75] = mulmod(buf[16], buf[27], AggregatorLib.p_mod);
buf[76] = mulmod(buf[75], buf[26], AggregatorLib.p_mod);
buf[77] = mulmod(buf[76], buf[19], AggregatorLib.p_mod);
buf[78] = mulmod(buf[77], buf[7], AggregatorLib.p_mod);
buf[79] = mulmod(buf[76], buf[7], AggregatorLib.p_mod);
buf[80] = addmod(addmod(addmod(addmod(buf[74], mulmod(buf[78], transcript[84], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[77], transcript[85], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[79], transcript[86], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[76], transcript[87], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[81] = mulmod(buf[75], buf[19], AggregatorLib.p_mod);
buf[82] = mulmod(buf[81], buf[7], AggregatorLib.p_mod);
buf[83] = mulmod(buf[75], buf[7], AggregatorLib.p_mod);
buf[84] = addmod(addmod(addmod(addmod(buf[80], mulmod(buf[82], transcript[89], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[81], transcript[90], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[83], transcript[91], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[75], transcript[92], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[85] = mulmod(buf[16], buf[26], AggregatorLib.p_mod);
buf[86] = mulmod(buf[85], buf[19], AggregatorLib.p_mod);
buf[87] = mulmod(buf[86], buf[7], AggregatorLib.p_mod);
buf[88] = mulmod(buf[85], buf[7], AggregatorLib.p_mod);
buf[89] = addmod(addmod(addmod(addmod(buf[84], mulmod(buf[87], transcript[93], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[86], transcript[94], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[88], transcript[95], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[85], transcript[96], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[90] = mulmod(buf[16], buf[19], AggregatorLib.p_mod);
buf[91] = mulmod(buf[90], buf[7], AggregatorLib.p_mod);
buf[92] = mulmod(buf[16], buf[7], AggregatorLib.p_mod);
buf[93] = addmod(addmod(addmod(addmod(transcript[72], mulmod(transcript[62], transcript[73], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[57], transcript[74], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[58], transcript[75], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[59], transcript[76], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[94] = addmod(addmod(addmod(addmod(buf[93], mulmod(transcript[60], transcript[77], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[61], transcript[78], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(mulmod(transcript[57], transcript[58], AggregatorLib.p_mod), transcript[79], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(mulmod(transcript[59], transcript[60], AggregatorLib.p_mod), transcript[80], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[95] = addmod(addmod(addmod(addmod(transcript[67], mulmod(transcript[68], 262144, AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[69], 68719476736, AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[66], 18014398509481984, AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[70], 4722366482869645213696, AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[96] = addmod(0, AggregatorLib.p_mod - transcript[65], AggregatorLib.p_mod);
buf[97] = addmod(mulmod(buf[94], buf[5], AggregatorLib.p_mod), mulmod(transcript[86], addmod(addmod(buf[95], mulmod(transcript[71], 1237940039285380274899124224, AggregatorLib.p_mod), AggregatorLib.p_mod), buf[96], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[98] = mulmod(transcript[87], addmod(addmod(addmod(transcript[66], mulmod(transcript[70], 262144, AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(transcript[71], 68719476736, AggregatorLib.p_mod), AggregatorLib.p_mod), buf[96], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[99] = AggregatorLib.fr_pow(buf[6], 4194304);
buf[100] = addmod(buf[99], AggregatorLib.p_mod - 1, AggregatorLib.p_mod);
buf[101] = AggregatorLib.fr_div(mulmod(21888237653275510688422624196183639687472264873923820041627027729598873448513, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 1, AggregatorLib.p_mod), aux[0]);
buf[102] = mulmod(addmod(mulmod(addmod(mulmod(buf[97], buf[5], AggregatorLib.p_mod), buf[98], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[99], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[103] = AggregatorLib.fr_div(mulmod(20023042075029862075635603136649050502962424708267292886390647475108663608857, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 10939663269433627367777756708678102241564365262857670666700619874077960926249, AggregatorLib.p_mod), aux[1]);
buf[104] = mulmod(addmod(buf[102], mulmod(buf[103], addmod(mulmod(transcript[111], transcript[111], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[111], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[105] = addmod(mulmod(addmod(buf[104], mulmod(addmod(transcript[102], AggregatorLib.p_mod - transcript[101], AggregatorLib.p_mod), buf[101], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(addmod(transcript[105], AggregatorLib.p_mod - transcript[104], AggregatorLib.p_mod), buf[101], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[106] = addmod(mulmod(addmod(mulmod(buf[105], buf[5], AggregatorLib.p_mod), mulmod(addmod(transcript[108], AggregatorLib.p_mod - transcript[107], AggregatorLib.p_mod), buf[101], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(addmod(transcript[111], AggregatorLib.p_mod - transcript[110], AggregatorLib.p_mod), buf[101], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[107] = addmod(transcript[58], buf[4], AggregatorLib.p_mod);
buf[108] = addmod(transcript[57], buf[4], AggregatorLib.p_mod);
buf[109] = mulmod(buf[3], buf[6], AggregatorLib.p_mod);
buf[110] = addmod(mulmod(addmod(buf[107], mulmod(buf[3], transcript[90], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[108], mulmod(buf[3], transcript[89], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[100], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[107], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[109], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[108], buf[109], AggregatorLib.p_mod), transcript[99], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[111] = addmod(addmod(addmod(AggregatorLib.fr_div(mulmod(496209762031177553439375370250532367801224970379575774747024844773905018536, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 11016257578652593686382655500910603527869149377564754001549454008164059876499, AggregatorLib.p_mod), aux[2]), AggregatorLib.fr_div(mulmod(20459617746544248062014976317203465365908990827508925305769002868034509119086, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 15402826414547299628414612080036060696555554914079673875872749760617770134879, AggregatorLib.p_mod), aux[3]), AggregatorLib.p_mod), AggregatorLib.fr_div(mulmod(9952375098572582562392692839581731570430874250722926349774599560449354965478, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 21710372849001950800533397158415938114909991150039389063546734567764856596059, AggregatorLib.p_mod), aux[4]), AggregatorLib.p_mod), AggregatorLib.fr_div(mulmod(2475562068482919789434538161456555368473369493180072113639899532770322825977, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 2785514556381676080176937710880804108647911392478702105860685610379369825016, AggregatorLib.p_mod), aux[5]), AggregatorLib.p_mod);
buf[112] = addmod(1, AggregatorLib.p_mod - addmod(buf[103], addmod(buf[111], AggregatorLib.fr_div(mulmod(12919475148704033459056799975164749366765443418491560826543287262494049147445, buf[100], AggregatorLib.p_mod), addmod(buf[6], AggregatorLib.p_mod - 8734126352828345679573237859165904705806588461301144420590422589042130041188, AggregatorLib.p_mod), aux[6]), AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[113] = addmod(transcript[60], buf[4], AggregatorLib.p_mod);
buf[114] = addmod(transcript[59], buf[4], AggregatorLib.p_mod);
buf[115] = AggregatorLib.fr_pow(4131629893567559867359510883348571134090853742863529169391034518566172092834, 2);
buf[116] = mulmod(buf[109], buf[115], AggregatorLib.p_mod);
buf[117] = addmod(mulmod(addmod(buf[113], mulmod(buf[3], transcript[92], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[114], mulmod(buf[3], transcript[91], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[103], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[113], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[116], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[114], buf[116], AggregatorLib.p_mod), transcript[102], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[118] = mulmod(addmod(mulmod(addmod(mulmod(buf[106], buf[5], AggregatorLib.p_mod), mulmod(buf[110], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[117], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[119] = addmod(transcript[63], buf[4], AggregatorLib.p_mod);
buf[120] = addmod(transcript[61], buf[4], AggregatorLib.p_mod);
buf[121] = AggregatorLib.fr_pow(4131629893567559867359510883348571134090853742863529169391034518566172092834, 4);
buf[122] = mulmod(buf[109], buf[121], AggregatorLib.p_mod);
buf[123] = addmod(mulmod(addmod(buf[119], mulmod(buf[3], transcript[94], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[120], mulmod(buf[3], transcript[93], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[106], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[119], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[122], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[120], buf[122], AggregatorLib.p_mod), transcript[105], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[124] = addmod(transcript[65], buf[4], AggregatorLib.p_mod);
buf[125] = addmod(transcript[64], buf[4], AggregatorLib.p_mod);


        return buf;
    }
}
