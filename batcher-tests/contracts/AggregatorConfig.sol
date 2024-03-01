// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

import "./AggregatorLib.sol";

library AggregatorConfig {
    function fill_target_circuits_g2(uint256[] memory s) internal pure {
        s[2] = 20254827738399954572626887295436018416933985417862323105061018368918147842437;
        s[3] = 9858548723327748237743962235469764542471278591070843367812809480839177341578;
        s[4] = 6740948541394295664821847410346898655927086308711485604024407515814947511489;
        s[5] = 21202360693030332268647058726659601739708154211957061308827608326628789574417;

        s[8] = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
        s[9] = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
        s[10] = 17805874995975841540914202342111839520379459829704422454583296818431106115052;
        s[11] = 13392588948715843804641432497768002650278120570034223513918757245338268106653;
    }

    function fill_verify_circuits_g2(uint256[] memory s) internal pure {
        s[2] = 20254827738399954572626887295436018416933985417862323105061018368918147842437;
        s[3] = 9858548723327748237743962235469764542471278591070843367812809480839177341578;
        s[4] = 6740948541394295664821847410346898655927086308711485604024407515814947511489;
        s[5] = 21202360693030332268647058726659601739708154211957061308827608326628789574417;

        s[8] = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
        s[9] = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
        s[10] = 17805874995975841540914202342111839520379459829704422454583296818431106115052;
        s[11] = 13392588948715843804641432497768002650278120570034223513918757245338268106653;
    }

    function calc_verify_circuit_lagrange(uint256[] memory buf, uint256[] calldata instances) internal view {
        require(instances.length == 9, "invalid verify instances");

        
        buf[0] = 13938980328550419284738776706827246176280969423964448730223027259710187967972;
        buf[1] = 10080804936426178450898268601502284759221542143860061343367267903388751914553;
        
        buf[3] = 8785898000555272117392662891855023697868648910016545667070392444550738873717;
        buf[4] = 17544078540429682313246998034158690681555575459640547856455405590958600791;
        
        buf[6] = 8787570352789507393768376613994433769977278208821515975013524156345214027595;
        buf[7] = 3447180418581316818779227505392211977843555802169863287438937009042687408855;
        
        buf[9] = 21481308279289047680709017426769505611742721420459198133107104326057017986912;
        buf[10] = 16515427270326600363392415228046266288691544825927963402409828268228988660212;
        
        buf[12] = 16606241122756505162954371360757836716798068520213592658031135038069778668498;
        buf[13] = 8710972186426174206552870641953760984095334740291652323419606903986350624012;
        
        buf[15] = 20849695064906935808951951409514188050484322257011210652092866451836068755430;
        buf[16] = 12049740248709351589758443156382594948893736335856257005451690524378446820661;
        
        buf[18] = 10659164669000052191539736467203249311968987730182147188918796551512835553026;
        buf[19] = 18917533785019820517221692383388159862754534061928071298555062853679382519791;
        
        buf[21] = 15697138979559955291604295977815492839664274412699585401474934113606044542103;
        buf[22] = 19271252544135658698230389212033032780214493092356904032558262542774828809352;
        
        buf[24] = 1937380857535134095209955346796713146625384357543388245097051829619942390529;
        buf[25] = 17089386754531982315879529452334403760761583090533299008894525716025565023979;
        
        
        
        for (uint256 i = 0; i < instances.length; i++) {
            buf[i * 3 + 2] = instances[i];
        }

        AggregatorLib.msm(buf, 0, instances.length);
    }

    function calc_target_circuit_lagrange(uint256[] calldata instances) internal view 
    returns (uint256[] memory buf) {
        buf = new uint256[](36);
        require(instances.length * 3 <= buf.length, "too many target instances");

        
        buf[0] = 13938980328550419284738776706827246176280969423964448730223027259710187967972;
        buf[1] = 10080804936426178450898268601502284759221542143860061343367267903388751914553;
        
        buf[3] = 8785898000555272117392662891855023697868648910016545667070392444550738873717;
        buf[4] = 17544078540429682313246998034158690681555575459640547856455405590958600791;
        
        buf[6] = 8787570352789507393768376613994433769977278208821515975013524156345214027595;
        buf[7] = 3447180418581316818779227505392211977843555802169863287438937009042687408855;
        
        buf[9] = 21481308279289047680709017426769505611742721420459198133107104326057017986912;
        buf[10] = 16515427270326600363392415228046266288691544825927963402409828268228988660212;
        
        buf[12] = 16606241122756505162954371360757836716798068520213592658031135038069778668498;
        buf[13] = 8710972186426174206552870641953760984095334740291652323419606903986350624012;
        
        buf[15] = 20849695064906935808951951409514188050484322257011210652092866451836068755430;
        buf[16] = 12049740248709351589758443156382594948893736335856257005451690524378446820661;
        
        buf[18] = 10659164669000052191539736467203249311968987730182147188918796551512835553026;
        buf[19] = 18917533785019820517221692383388159862754534061928071298555062853679382519791;
        
        buf[21] = 15697138979559955291604295977815492839664274412699585401474934113606044542103;
        buf[22] = 19271252544135658698230389212033032780214493092356904032558262542774828809352;
        
        buf[24] = 1937380857535134095209955346796713146625384357543388245097051829619942390529;
        buf[25] = 17089386754531982315879529452334403760761583090533299008894525716025565023979;
        
        buf[27] = 18379128727592559582753602504257558513277631043749876486193140614746586609745;
        buf[28] = 10793659392501667689051056541876024392983830770244082888394593986369076635438;
        
        buf[30] = 12550173142583956208149217770111359819635741625069087293933911038104024261148;
        buf[31] = 20993996374304884466002967400794515175319791434752919665136624120427228582470;
        
        buf[33] = 20223594273872379617290410131971617115388556680152986771045319070680491109971;
        buf[34] = 12146788430838638662185685861540915928786651229086887331648725512780289866520;
        
        
        
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
        absorbing[0] = 13244204770158847015508964123149955566160392092923389285357722469680776289756;
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