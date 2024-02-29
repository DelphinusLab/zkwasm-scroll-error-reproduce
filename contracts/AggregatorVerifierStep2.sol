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
(buf[177], buf[178]) = (19558151716964820232383453010484067341454225914872673635471457992867821534904, 20819362922938330737306285475546541896462286751489370039627354628862939600036);
buf[179] = buf[64];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (12404427690226111862895368655564137288632641078877576869286590300022841129558, 21502008743798546098068709975074104496256928187416232301244102320679022544402);
buf[179] = buf[56];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (18063809908342692581506741754479018827191049299908699517106810459020707300702, 7485038263999681696694946296550986811146894376713760921776731978238374728962);
buf[179] = buf[73];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (1035753110578814425492919252106683873318128375369145320206130469904401368173, 4134002970502681627333360680474558982175579079422787504064018615567374363612);
buf[179] = buf[79];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (10682910463862166514650517679324938353026718553664182989127373769556273447184, 20892268575066913215656408056396295702068043684862807358906871809695079173976);
buf[179] = buf[76];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (814694487610611839222898513907657927407429441084504463778471673522640305837, 14943698586779335669434783606446820083135342229985911047713860978756507926439);
buf[179] = buf[55];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6560106324073840509981193524447901709046517268042145897771161925517705193768, 4424281094686056906331796524493234042686396641831850063162493758258353701410);
buf[179] = buf[78];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (10390992793890347589218225373462627496719412482439453936644799902155781305883, 8803552624029205824730775394096121331354634598698145096556336843125612541622);
buf[179] = buf[77];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (15350808100886533291356779760093915103419667946570235584029255773114760359880, 16722526982942182894257468385493882468631424916072710385101925471863904308043);
buf[179] = buf[68];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (7066728928862480670077955936789940245151032353524065157228293291646286225592, 2897830207226331508219743529003027991901908035244717101279938716876147974367);
buf[179] = buf[67];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6143984651353502182598332572161171447494591281312828824364893983190350236300, 594258705271401567506889276196431892707424708928900099337068275133357485752);
buf[179] = buf[69];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (4138196432825647597540493592693180866277364680486723363625261708886369476595, 8620806774774079719036474593454621840220422555155264943980118534239935751202);
buf[179] = buf[66];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (4214537076544566971207224658366100440714715167396131402150579525108062248573, 6667374770829536954870696246107022581180684177519802174936253888085002335606);
buf[179] = buf[72];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (766513369337568948391658528067460193124100524720674291075527027578464347414, 12170148442367453448964908689656425487214024288434328173107900353690716584112);
buf[179] = buf[62];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (13657671904042862132973171532400494780204696805422215852642068057844488983677, 16026238906318191034042990066093902316611165868796048056780973237323185277240);
buf[179] = buf[63];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (2335729020238659299867544441257996654279696180921031821368911704287079869930, 20580827405531480695038199280881437619179826890625315919196034776209396418017);
buf[179] = buf[71];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[54], transcript[55]);
buf[179] = mulmod(buf[92], mulmod(buf[99], buf[99], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);


        return buf;
    }
}
