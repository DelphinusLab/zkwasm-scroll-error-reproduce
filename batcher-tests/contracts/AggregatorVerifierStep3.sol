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
(buf[177], buf[178]) = (10725371405596473945554473685573363819169217647959225516381080671706184190818, 12030201630134635480114869460860586894076808918484646656391560448407355181447);
buf[179] = buf[82];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (18654482000255969546454267983490132495008754790214241431825223900014085365833, 17541260920264151048799308631288104605239977751871777654974264778949675304450);
buf[179] = buf[81];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (10710888160525727999630811924243854333812723576803224305171140512768833716424, 10461191925247344029183360990613260167996839052086830209487914435743711410892);
buf[179] = buf[83];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (20359589164815601257123169790896477839422457735580281001503803698570739191760, 7324234503619079195457240498171508038622822960024756528991067979762981921301);
buf[179] = buf[75];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (17310012517916380093668080034355573683023657833561776589167731381300281788410, 11021540449824051361390644354002695028963678653215410106733329114779703683245);
buf[179] = buf[87];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (10260021499850994554271685499373971437206474702687732281865595276781250184986, 6941195666947163553389279364307109648264008068668383708818259153027005305865);
buf[179] = buf[86];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (6973813816964494190263356607863686500012649360955604634877115150197621922271, 17534296029202423932565909696615625928959085235185546559091919423606975304857);
buf[179] = buf[88];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (13694300433928216607363212400939279039125566623271565519652060334436875486064, 5040799404356892470363949852501231447179927897886067360975373193953137329171);
buf[179] = buf[85];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (1366017563704037603494300597973233094339610629636824417333301516133947263851, 21375667940285789915245372818262014491697838964758227969142670977935946232956);
buf[179] = buf[91];
AggregatorLib.ecc_mul_add(buf, 175);
(buf[177], buf[178]) = (3037830555749798748758505602151581058337781440064647352190701225155245171591, 12925616628906360848223139967952975749903097097291658069327670404817282832003);
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
