// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

library AggregatorConfig {
    function fill_target_circuits_g2(uint256[] memory s) internal pure {
        s[2] = 2914043970892904733742749213663524083307034574264075696414129759211067547133;
        s[3] = 3961634298075356971361329264194649936054755683067067387232129468854304731157;
        s[4] = 6756394100011080891238780987425848998226606107961248744439665362114177326873;
        s[5] = 6655190968012860206533484625772480091186886812184598776885004593691028216874;

        s[8] = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
        s[9] = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
        s[10] = 17805874995975841540914202342111839520379459829704422454583296818431106115052;
        s[11] = 13392588948715843804641432497768002650278120570034223513918757245338268106653;
    }

    function fill_verify_circuits_g2(uint256[] memory s) internal pure {
        s[2] = 2914043970892904733742749213663524083307034574264075696414129759211067547133;
        s[3] = 3961634298075356971361329264194649936054755683067067387232129468854304731157;
        s[4] = 6756394100011080891238780987425848998226606107961248744439665362114177326873;
        s[5] = 6655190968012860206533484625772480091186886812184598776885004593691028216874;

        s[8] = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
        s[9] = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
        s[10] = 17805874995975841540914202342111839520379459829704422454583296818431106115052;
        s[11] = 13392588948715843804641432497768002650278120570034223513918757245338268106653;
    }

    function calc_verify_circuit_lagrange(uint256[] memory buf, uint256[] calldata instances) internal view {
        require(instances.length == 6, "invalid verify instances");

        
        buf[0] = 11892819894467926885052518509335030011469222902605388839695324096495445607838;
        buf[1] = 3698893865407966770250319949342434805292938735660418416808874556648812609614;
        
        buf[3] = 10574218488390292945132349878879081159000234972705114174564007185038228579889;
        buf[4] = 17930092361798129357571033574559317535695321780142502606743099173910220797701;
        
        buf[6] = 16138539069387700476596672442517728189667775259754010213304054632205886522881;
        buf[7] = 18823342901708208283784891288773318223550921447306709466102000565260126633858;
        
        buf[9] = 16879970854647207450115115851401786176198802757974915888260114827388058065409;
        buf[10] = 125994109205233746342419714211559688474695448714176330006524889217419764314;
        
        buf[12] = 15808041487969273966399474639721039259657905936273542057489707801980852233463;
        buf[13] = 15835270267079931218135175875021302993565394951022579955774977843202142376609;
        
        buf[15] = 17629187574788521144500988165731814796720195763063356269135938955132526422565;
        buf[16] = 8386750196522506448592964132106764790574387475776026290535846698973933224932;
        
        
        
        for (uint256 i = 0; i < instances.length; i++) {
            buf[i * 3 + 2] = instances[i];
        }

        AggregatorLib.msm(buf, 0, instances.length);
    }

    function calc_target_circuit_lagrange(uint256[] calldata instances) internal view 
    returns (uint256[] memory buf) {
        buf = new uint256[](36);
        require(instances.length * 3 <= buf.length, "too many target instances");

        
        buf[0] = 11892819894467926885052518509335030011469222902605388839695324096495445607838;
        buf[1] = 3698893865407966770250319949342434805292938735660418416808874556648812609614;
        
        buf[3] = 10574218488390292945132349878879081159000234972705114174564007185038228579889;
        buf[4] = 17930092361798129357571033574559317535695321780142502606743099173910220797701;
        
        buf[6] = 16138539069387700476596672442517728189667775259754010213304054632205886522881;
        buf[7] = 18823342901708208283784891288773318223550921447306709466102000565260126633858;
        
        buf[9] = 16879970854647207450115115851401786176198802757974915888260114827388058065409;
        buf[10] = 125994109205233746342419714211559688474695448714176330006524889217419764314;
        
        buf[12] = 15808041487969273966399474639721039259657905936273542057489707801980852233463;
        buf[13] = 15835270267079931218135175875021302993565394951022579955774977843202142376609;
        
        buf[15] = 17629187574788521144500988165731814796720195763063356269135938955132526422565;
        buf[16] = 8386750196522506448592964132106764790574387475776026290535846698973933224932;
        
        buf[18] = 3667534962434860087981714208315354021583818518497677465061816964005675429850;
        buf[19] = 8700811104975915207926819543439676700017446952461336780601181390205902676170;
        
        buf[21] = 13588588068667481163789766378699314642066634077826490977510567597409522426640;
        buf[22] = 14842398293635775574164880584918490675098934548636478615264296737042698554611;
        
        buf[24] = 4365135412621531405442914380763128010188467827456325132984278462823301484383;
        buf[25] = 12665258523746378149997814004783883995401899191236348686021370510001464918308;
        
        buf[27] = 648740996754663990694399937856348187388876926783088969687800987157305791136;
        buf[28] = 7348552584646106504178744575090541736400879754470225768281201560217526789338;
        
        buf[30] = 14459052852644032974865842565137363915081902971049108363680961134339751806077;
        buf[31] = 11829445788682460043232735804045438592192051812577878808999226659003435807860;
        
        buf[33] = 17109050770149766496098221598584613410209554998955962115413349932146888702151;
        buf[34] = 2233038929466931680047179152815940341719157432585454461957264426686891822933;
        
        
        
        for (uint256 i = 0; i < instances.length; i++) {
            buf[i * 3 + 2] = instances[i];
        }

        AggregatorLib.msm(buf, 0, instances.length);
    }

    function hash(uint256[] memory absorbing, uint256 length)
        private
        view
        returns (bytes32[1] memory v)
    {
        
        bytes memory tmp = new bytes(32 * length + 1);
        tmp[length * 32] = 0;
        for (uint256 i = 0; i < length; i++) {
            uint256 offset = 32 + (i * 32);
            uint256 data = absorbing[i];
            assembly { mstore(add(tmp, offset), data) }
        }
        v[0] = keccak256(tmp);
        
    }

    function squeeze_challenge(uint256[] memory absorbing, uint256 length) internal view returns (uint256 v) {
        absorbing[length] = 0;
        bytes32 res = hash(absorbing, length)[0];
        absorbing[0] = uint256(res);
        v = absorbing[0] % AggregatorLib.p_mod;
    }

    function get_challenges(
        uint256[] calldata transcript,
        uint256[] memory buf // buf[0..1] is instance_commitment
    ) internal view {
        
        
        uint256[] memory absorbing = new uint256[](144);
        absorbing[0] = 20763503277970384468585472984380140089289068826819336977378768817933808390546;
        absorbing[1] = buf[0];
        absorbing[2] = buf[1];

        uint256 pos = 3;
        uint256 transcript_pos = 0;
        for (uint i = 0; i < 10; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        // theta
        buf[2] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 6; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        // beta
        buf[3] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        // gamma
        buf[4] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 9; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        // y
        buf[5] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 3; i ++) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
            absorbing[pos++] = transcript[transcript_pos++];
            absorbing[pos++] = transcript[transcript_pos++];
        }
        //x
        buf[6] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        for (uint i = 0; i < 72; i ++) {
            absorbing[pos++] = transcript[transcript_pos++];
        }
        //v
        buf[7] = squeeze_challenge(absorbing, pos);
        
        
        pos = 1;
        //u
        buf[8] = squeeze_challenge(absorbing, pos);
        
        

        for (; transcript_pos < transcript.length; transcript_pos += 2) {
            AggregatorLib.check_on_curve(transcript[transcript_pos], transcript[transcript_pos + 1]);
        }
    }
}
