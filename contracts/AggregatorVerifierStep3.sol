// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

contract AggregatorVerifierCoreStep3 {
    function verify_proof(
        uint256[] calldata transcript,
        uint256[] calldata aux,
        uint256[] memory buf
    ) public view returns (uint256[] memory)  {
        (buf[177], buf[178]) = (transcript[52], transcript[53]);
buf[179] = mulmod(buf[92], buf[99], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[50], transcript[51]);
buf[179] = buf[92];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (buf[0], buf[1]);
buf[179] = buf[31];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[20], transcript[21]);
buf[179] = addmod(buf[23], buf[52], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[22], transcript[23]);
buf[179] = buf[51];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[42], transcript[43]);
buf[179] = addmod(buf[46], buf[165], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[24], transcript[25]);
buf[179] = addmod(buf[24], buf[29], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[26], transcript[27]);
buf[179] = buf[59];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[44], transcript[45]);
buf[179] = addmod(buf[53], buf[168], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[28], transcript[29]);
buf[179] = addmod(buf[18], buf[60], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[30], transcript[31]);
buf[179] = buf[57];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[46], transcript[47]);
buf[179] = addmod(buf[58], buf[8], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (15872044863750428967345355760084563618331152920693360962057650246732616550613, 10529587842756819403032125826700421476095367628431173081314065729714501275041);
buf[179] = buf[82];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6992821972805672855737789456807763628497313246494085189103514649071349025994, 10336781142251651515187490235684481231576541444846600490733823158219640896617);
buf[179] = buf[81];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (20215133144472477623578398720477919164678488554737996403873551429874942542513, 10218722309432891197851562386777633527755507718997841491991758236234857706497);
buf[179] = buf[83];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (14887533528582008393336440629357183853248747375973382718474661322706384605530, 18871889099339864179365414883564178833813904334179652828332420517333975782498);
buf[179] = buf[75];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (7519827451130037040056438537387628798161905105638544800127213804251762336781, 21716333955092598558909390230369792476682534761132041029229231128683611600585);
buf[179] = buf[87];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (11900407240563724559044081090107800560319564555833371118301883230607611873966, 6166249849398457694862641353590701254243291266844100923183189685232647323348);
buf[179] = buf[86];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (18746741254645672560024265005955932395924748225582284892564320932853787498039, 17670606218360938420841315198812294125980696226375584791074522964998639700349);
buf[179] = buf[88];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (3169848434355062611532263858879924003477673359939169590238988107364277728783, 12923502208895077883877778569321853235440252634445658948572064426501804107651);
buf[179] = buf[85];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (4192088883187751528179263884828393472225838523417769246004275992519395200498, 20131319062339710208186837860256192972302526123070345346575951621066511444702);
buf[179] = buf[91];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (7257984856673584561425685918199787700943689010539449812078157400330379443261, 4753392172876602636932870995692496642356455290769851320805371340724538164027);
buf[179] = buf[90];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[32], transcript[33]);
buf[179] = addmod(addmod(buf[17], buf[44], AggregatorLib.p_mod), buf[162], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[34], transcript[35]);
buf[179] = addmod(addmod(buf[22], buf[36], AggregatorLib.p_mod), buf[161], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[36], transcript[37]);
buf[179] = addmod(addmod(buf[20], buf[48], AggregatorLib.p_mod), buf[164], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[38], transcript[39]);
buf[179] = addmod(addmod(buf[21], buf[47], AggregatorLib.p_mod), buf[160], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[40], transcript[41]);
buf[179] = addmod(buf[49], buf[166], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[48], transcript[49]);
buf[179] = buf[16];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[128], transcript[129]);
buf[179] = mulmod(buf[17], mulmod(10939663269433627367777756708678102241564365262857670666700619874077960926249, buf[6], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[130], transcript[131]);
buf[179] = mulmod(buf[18], mulmod(8734126352828345679573237859165904705806588461301144420590422589042130041188, buf[6], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[132], transcript[133]);
buf[179] = mulmod(buf[16], buf[6], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[134], transcript[135]);
buf[179] = mulmod(buf[8], mulmod(11211301017135681023579411905410872569206244553457844956874280139879520583390, buf[6], AggregatorLib.p_mod), AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (transcript[136], transcript[137]);
buf[179] = mulmod(1426404432721484388505361748317961535523355871255605456897797744433766488507, buf[6], AggregatorLib.p_mod);
AggregatorLib.ecc_mul_add(buf, 175);


        uint256[] memory ret = new uint256[](4);
        ret[0] = buf[170];
        ret[1] = buf[171];
        ret[2] = buf[175];
        ret[3] = buf[176];

        return ret;
    }
}
