// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

contract AggregatorVerifierCoreStep2 {
    function verify_proof(
        uint256[] calldata transcript,
        uint256[] calldata aux,
        uint256[] memory buf
    ) public view returns (uint256[] memory)  {
        buf[126] = AggregatorLib.fr_pow(4131629893567559867359510883348571134090853742863529169391034518566172092834, 6);
buf[127] = mulmod(buf[109], buf[126], AggregatorLib.p_mod);
buf[128] = addmod(mulmod(addmod(buf[124], mulmod(buf[3], transcript[96], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[125], mulmod(buf[3], transcript[95], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[109], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[124], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[127], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[125], buf[127], AggregatorLib.p_mod), transcript[108], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[129] = mulmod(addmod(mulmod(addmod(buf[118], mulmod(buf[123], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[128], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[130] = addmod(transcript[56], buf[4], AggregatorLib.p_mod);
buf[131] = addmod(transcript[66], buf[4], AggregatorLib.p_mod);
buf[132] = AggregatorLib.fr_pow(4131629893567559867359510883348571134090853742863529169391034518566172092834, 8);
buf[133] = mulmod(buf[109], buf[132], AggregatorLib.p_mod);
buf[134] = addmod(mulmod(addmod(buf[130], mulmod(buf[3], transcript[98], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[131], mulmod(buf[3], transcript[97], AggregatorLib.p_mod), AggregatorLib.p_mod), transcript[112], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - mulmod(addmod(buf[130], mulmod(4131629893567559867359510883348571134090853742863529169391034518566172092834, buf[133], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(addmod(buf[131], buf[133], AggregatorLib.p_mod), transcript[111], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[135] = mulmod(addmod(mulmod(addmod(buf[129], mulmod(buf[134], buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[136] = mulmod(addmod(buf[135], mulmod(buf[103], addmod(mulmod(transcript[113], transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[113], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[137] = mulmod(transcript[63], buf[2], AggregatorLib.p_mod);
buf[138] = addmod(mulmod(addmod(buf[137], addmod(mulmod(340282366920938463463374607431768211456, transcript[64], AggregatorLib.p_mod), transcript[81], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[2], AggregatorLib.p_mod), buf[3], AggregatorLib.p_mod);
buf[139] = mulmod(mulmod(transcript[113], buf[138], AggregatorLib.p_mod), addmod(addmod(mulmod(addmod(buf[137], transcript[81], AggregatorLib.p_mod), buf[2], AggregatorLib.p_mod), transcript[82], AggregatorLib.p_mod), buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[140] = mulmod(addmod(mulmod(mulmod(transcript[114], addmod(transcript[115], buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(transcript[117], buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - buf[139], AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod);
buf[141] = addmod(transcript[115], AggregatorLib.p_mod - transcript[117], AggregatorLib.p_mod);
buf[142] = addmod(mulmod(addmod(mulmod(addmod(buf[136], buf[140], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], buf[141], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(mulmod(buf[141], addmod(transcript[115], AggregatorLib.p_mod - transcript[116], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[143] = addmod(mulmod(addmod(mulmod(buf[142], buf[5], AggregatorLib.p_mod), mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[103], addmod(mulmod(transcript[118], transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[118], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[144] = addmod(addmod(mulmod(transcript[84], buf[2], AggregatorLib.p_mod), transcript[85], AggregatorLib.p_mod), buf[4], AggregatorLib.p_mod);
buf[145] = mulmod(mulmod(transcript[118], addmod(addmod(mulmod(transcript[83], buf[2], AggregatorLib.p_mod), transcript[66], AggregatorLib.p_mod), buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[144], AggregatorLib.p_mod);
buf[146] = mulmod(addmod(mulmod(mulmod(transcript[119], addmod(transcript[120], buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(transcript[122], buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - buf[145], AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod);
buf[147] = addmod(transcript[120], AggregatorLib.p_mod - transcript[122], AggregatorLib.p_mod);
buf[148] = mulmod(addmod(mulmod(addmod(mulmod(buf[143], buf[5], AggregatorLib.p_mod), buf[146], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], buf[147], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[149] = mulmod(addmod(buf[148], mulmod(mulmod(buf[147], addmod(transcript[120], AggregatorLib.p_mod - transcript[121], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[150] = addmod(mulmod(addmod(buf[149], mulmod(buf[101], addmod(1, AggregatorLib.p_mod - transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[103], addmod(mulmod(transcript[123], transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod - transcript[123], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[151] = mulmod(mulmod(transcript[123], addmod(addmod(mulmod(18, buf[2], AggregatorLib.p_mod), transcript[67], AggregatorLib.p_mod), buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[144], AggregatorLib.p_mod);
buf[152] = mulmod(addmod(mulmod(mulmod(transcript[124], addmod(transcript[125], buf[3], AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(transcript[127], buf[4], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod - buf[151], AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod);
buf[153] = addmod(transcript[125], AggregatorLib.p_mod - transcript[127], AggregatorLib.p_mod);
buf[154] = mulmod(addmod(mulmod(addmod(mulmod(buf[150], buf[5], AggregatorLib.p_mod), buf[152], AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod), mulmod(buf[101], buf[153], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[5], AggregatorLib.p_mod);
buf[155] = AggregatorLib.fr_div(addmod(buf[154], mulmod(mulmod(buf[153], addmod(transcript[125], AggregatorLib.p_mod - transcript[126], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[112], AggregatorLib.p_mod), AggregatorLib.p_mod), buf[100], aux[7]);
buf[156] = addmod(addmod(addmod(addmod(buf[89], mulmod(buf[91], transcript[97], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[90], transcript[98], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[92], buf[155], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[16], transcript[88], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[157] = mulmod(buf[8], buf[27], AggregatorLib.p_mod);
buf[158] = mulmod(buf[157], buf[19], AggregatorLib.p_mod);
buf[159] = mulmod(buf[157], buf[7], AggregatorLib.p_mod);
buf[160] = mulmod(buf[8], buf[26], AggregatorLib.p_mod);
buf[161] = mulmod(buf[160], buf[19], AggregatorLib.p_mod);
buf[162] = mulmod(buf[161], buf[7], AggregatorLib.p_mod);
buf[163] = addmod(addmod(addmod(addmod(mulmod(buf[158], transcript[62], AggregatorLib.p_mod), mulmod(buf[159], transcript[68], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[157], transcript[70], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[162], transcript[100], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[161], transcript[103], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[164] = mulmod(buf[160], buf[7], AggregatorLib.p_mod);
buf[165] = mulmod(buf[8], buf[19], AggregatorLib.p_mod);
buf[166] = mulmod(buf[165], buf[7], AggregatorLib.p_mod);
buf[167] = addmod(addmod(addmod(addmod(buf[163], mulmod(buf[164], transcript[106], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[160], transcript[109], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[166], transcript[112], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[165], transcript[114], AggregatorLib.p_mod), AggregatorLib.p_mod);
buf[168] = mulmod(buf[8], buf[7], AggregatorLib.p_mod);
buf[169] = addmod(addmod(addmod(buf[25], buf[156], AggregatorLib.p_mod), addmod(addmod(buf[167], mulmod(buf[168], transcript[119], AggregatorLib.p_mod), AggregatorLib.p_mod), mulmod(buf[8], transcript[124], AggregatorLib.p_mod), AggregatorLib.p_mod), AggregatorLib.p_mod), addmod(mulmod(buf[7], transcript[69], AggregatorLib.p_mod), transcript[71], AggregatorLib.p_mod), AggregatorLib.p_mod);
(buf[175], buf[176]) = (1, 21888242871839275222246405745257275088696311157297823662689037894645226208581);
buf[177] = buf[169];
AggregatorLib.ecc_mul(buf, 175);
(buf[177], buf[178]) = (transcript[0], transcript[1]);
buf[179] = buf[33];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[2], transcript[3]);
buf[179] = buf[32];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[4], transcript[5]);
buf[179] = buf[34];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[6], transcript[7]);
buf[179] = buf[30];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[8], transcript[9]);
buf[179] = addmod(buf[39], buf[158], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[10], transcript[11]);
buf[179] = buf[38];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[12], transcript[13]);
buf[179] = buf[40];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[14], transcript[15]);
buf[179] = buf[37];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[16], transcript[17]);
buf[179] = addmod(addmod(buf[43], buf[157], AggregatorLib.p_mod), 1, AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[18], transcript[19]);
buf[179] = addmod(addmod(buf[42], buf[159], AggregatorLib.p_mod), buf[7], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (20381833814732559653836637646313220762467959693599860257442344619984954248793, 3547181670668729817595743039062921945016298530231972371627396602536697598753);
buf[179] = buf[64];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (13961517376091580436677909390476891342316478517513809092918863487031763332354, 11872232438316490920533150955838925355271351332528611764489128910879998447519);
buf[179] = buf[56];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (339815489876202673918153957568240356557836480503139042188739808964785746569, 8887643286010365055408026499256060561081177846971904192661216335448988977681);
buf[179] = buf[73];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (8523310156365678607873058787290440759493680405079073711597781729249969264498, 990142430034524374794921477507378244985378416311849887104863647986802235956);
buf[179] = buf[79];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (3850075666661699101071660666925310162642125325559940865312569560747343656466, 16085493038854237786855583851230038020387720139310756044192250465404536522771);
buf[179] = buf[76];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (13100433056758105664790193132485803824623451857106633807616225989911830502683, 21102019417597247513561427745675977134391727921240672530418540019175380396121);
buf[179] = buf[55];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (20751665820635744134033768062946020410167044891440207893741200943609405840270, 18452594876336780495548178886159515522545240991645500410087187114902649584685);
buf[179] = buf[78];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (3446584089799272673309852766465726738934045633425478662298717570128599348014, 1796236964278885469034586939998480437676743268484328305684842445688914423559);
buf[179] = buf[77];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (5317702032100743141512680017998570726648329976438129075927624801097986050228, 18324850037398535383690859866814860360570410019086385900776218683348777921305);
buf[179] = buf[68];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6848722541790441561634626827708092838883157740115390170639430000479850878860, 396517819810495791561398505967799389341995767536640399989003127323287180794);
buf[179] = buf[67];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (19817962105509021532651372656359857727251767222853420540160104849030880197515, 12184002955177274286400809972696923455291059889669426698369001920392292949427);
buf[179] = buf[69];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (5516259420723301349820796936790067307130864520371716038155209508942620287314, 62649377783876739278664246134873186358080987170104521962518486280941860325);
buf[179] = buf[66];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (11497615731993779774848777279222429740157658673171438256284330910738927070236, 16818465399170695049023928303415150810621817782948671285412612729706516990396);
buf[179] = buf[72];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (17879141971635428415035745000934583782668596826444715521211298789081101462271, 18042035624110234337381140131879544051202625059001364103120576751005293122043);
buf[179] = buf[62];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (11842925333144809612437252249920373508507299270797723394415577706590572532471, 463924039437355010096953329728074004460675685060793795835339819738617685659);
buf[179] = buf[63];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (19333375280985844939663914190470724453737717918714281580310466384788834352278, 1173108468247698408412323024078591240790922448682775974728079519943266540692);
buf[179] = buf[71];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[54], transcript[55]);
buf[179] = mulmod(buf[92], mulmod(buf[99], buf[99], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);


        return buf;
    }
}
