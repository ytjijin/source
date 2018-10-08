// Copyright (c) 2010 Satoshi Nakamoto
// Copyright (c) 2009-2017 The Bitcoin developers
// Copyright (c) 2017 Empinel/The Ion Developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "assert.h"

#include "chainparams.h"
#include "main.h"
#include "util.h"
#include "amount.h"

#include <boost/assign/list_of.hpp>

using namespace boost::assign;

struct SeedSpec6 {
    uint8_t addr[16];
    uint16_t port;
};

#include "chainparamsseeds.h"

/**
 * Main network
 */

//! Convert the pnSeeds6 array into usable address objects.
static void convertSeed6(std::vector<CAddress> &vSeedsOut, const SeedSpec6 *data, unsigned int count)
{
    // It'll only connect to one or two seed nodes because once it connects,
    // it'll get a pile of addresses with newer timestamps.
    // Seed nodes are given a random 'last seen time' of between one and two
    // weeks ago.
    const int64_t nOneWeek = 7*24*60*60;
    for (unsigned int i = 0; i < count; i++)
    {
        struct in6_addr ip;
        memcpy(&ip, data[i].addr, sizeof(ip));
        CAddress addr(CService(ip, data[i].port));
        addr.nTime = GetTime() - GetRand(nOneWeek) - nOneWeek;
        vSeedsOut.push_back(addr);
    }
}

static CBlock CreateGenesisBlock(const char* pszTimestamp, const CScript& genesisOutputScript, const uint64_t nTime, const uint32_t nNonce, const uint32_t nBits, const int32_t nVersion, const CAmount& genesisReward)
{
	std::vector<CTxIn> vin;
	vin.resize(1);
	vin[0].scriptSig = CScript() << nTime << CScriptNum(4) << std::vector<unsigned char>((const unsigned char*)pszTimestamp, (const unsigned char*)pszTimestamp + strlen(pszTimestamp));
	std::vector<CTxOut> vout;
	vout.resize(1);
	vout[0].nValue = genesisReward;
	vout[0].scriptPubKey = genesisOutputScript;
	CTransaction txNew(1, nTime, vin, vout, 0);
		
    CBlock genesis;
    genesis.nTime    = nTime;
    genesis.nBits    = nBits;
    genesis.nNonce   = nNonce;
    genesis.nVersion = nVersion;
    genesis.vtx.push_back(txNew);
    genesis.hashPrevBlock.SetNull();
    genesis.hashMerkleRoot = genesis.BuildMerkleTree();

    return genesis;
}

static CBlock CreateGenesisBlock(uint64_t nTime, uint32_t nNonce, uint32_t nBits, int32_t nVersion, const CAmount& genesisReward)
{
    const char* pszTimestamp = "July 16, 2018. The YTGM release. ";
    const CScript genesisOutputScript = CScript() << ParseHex("048402c37ae3f08c7928c4ff8b26e2e38921d56e8e6807f5455cc68fbbd83a8b519bd06e7b26688a952581bbf67cba77bc105ac09be097b244063dc1abe3e4eafb") << OP_CHECKSIG;
    return CreateGenesisBlock(pszTimestamp, genesisOutputScript, nTime, nNonce, nBits, nVersion, genesisReward);
}

class CMainParams : public CChainParams {
public:
    CMainParams() {
        // The message start string is designed to be unlikely to occur in normal data.
        // The characters are rarely used upper ASCII, not valid as UTF-8, and produce
        // a large 4-byte int at any alignment.
        pchMessageStart[0] = 0xa3;
        pchMessageStart[1] = 0xff;
        pchMessageStart[2] = 0x0a;
        pchMessageStart[3] = 0xdb;
        vAlertPubKey = ParseHex("040a9d4fc3e6497aa2237461971820a5f99fa1024a882adb04c4d47b664bfd6c591722a2e4c9e6b1f548f2a361b44e557d519d4916b2229aa7416ae84286c531e5");
        nDefaultPort = 21559;
        nRPCPort = 21600;
        nProofOfWorkLimit = uint256S("000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff");
        nProofOfStakeLimit = uint256S("00000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff");

        genesis = CreateGenesisBlock(1531749600, 6867681, 0x1e00ffff, 1, (1 * COIN));

        hashGenesisBlock = genesis.GetHash();
	
        assert(hashGenesisBlock == uint256("0x000000310732c478786e3871d3e463dd37f733164826492e9f3dfa7ecc1a3e7f"));
        assert(genesis.hashMerkleRoot == uint256("0x9fc932258ce9ad5e3619c1382ffc398a6d3c01c853806f2147da62fe9e724513"));

        base58Prefixes[PUBKEY_ADDRESS] = std::vector<unsigned char>(1,78);
        base58Prefixes[SCRIPT_ADDRESS] = std::vector<unsigned char>(1,140);
        base58Prefixes[SECRET_KEY] =     std::vector<unsigned char>(1,153);
        base58Prefixes[STEALTH_ADDRESS] = std::vector<unsigned char>(1,40);
        base58Prefixes[EXT_PUBLIC_KEY] = list_of(0x04)(0x88)(0xB2)(0x1E).convert_to_container<std::vector<unsigned char> >();
        base58Prefixes[EXT_SECRET_KEY] = list_of(0x04)(0x88)(0xAD)(0xE4).convert_to_container<std::vector<unsigned char> >();

        vSeeds.push_back(CDNSSeedData("47.104.7.50", "47.104.7.50"));
        vSeeds.push_back(CDNSSeedData("47.104.232.136", "47.104.232.136"));
        vSeeds.push_back(CDNSSeedData("47.75.86.18", "47.75.86.18"));
        vSeeds.push_back(CDNSSeedData("47.105.77.93", "47.105.77.93"));
        vSeeds.push_back(CDNSSeedData("47.105.77.93", "47.105.77.93"));
        
        convertSeed6(vFixedSeeds, pnSeed6_main, ARRAYLEN(pnSeed6_main));

		nPoolMaxTransactions = 3;
        strDarksendPoolDummyAddress = "YT8VnNna95UyCF1PgDZMuyo4Vto9YeJXth";
        nLastPOWBlock 	= 40000;
    }

    virtual const CBlock& GenesisBlock() const { return genesis; }
    virtual Network NetworkID() const { return CChainParams::MAIN; }

    virtual const vector<CAddress>& FixedSeeds() const {
        return vFixedSeeds;
    }
protected:
    CBlock genesis;
    vector<CAddress> vFixedSeeds;
};
static CMainParams mainParams;


//
// Testnet
//

class CTestNetParams : public CMainParams {
public:
    CTestNetParams() {
        // The message start string is designed to be unlikely to occur in normal data.
        // The characters are rarely used upper ASCII, not valid as UTF-8, and produce
        // a large 4-byte int at any alignment.
        pchMessageStart[0] = 0xdb;
        pchMessageStart[1] = 0x86;
        pchMessageStart[2] = 0xfc;
        pchMessageStart[3] = 0x69;
        vAlertPubKey = ParseHex("");
        nDefaultPort = 31559;
        nRPCPort = 31600;
        strDataDir = "testnet";
   
        nProofOfWorkLimit = uint256S("000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff");
        nProofOfStakeLimit = uint256S("00000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffff");

    genesis = CreateGenesisBlock(1491737471, 22072348, 0x1e00ffff, 1, (1 * COIN));
    hashGenesisBlock = genesis.GetHash();
	
    assert(hashGenesisBlock == uint256("0x000000a0051e03f16cafcf0a769e1e12efa2243d5bddc603f9b0ed4a1a6cf83d"));
    assert(genesis.hashMerkleRoot == uint256("0xc6eed21cc1bceaf8db267f3f9765b3a07434a4db0e67056b156607b833f2999f"));

        base58Prefixes[PUBKEY_ADDRESS] = std::vector<unsigned char>(1,97);
        base58Prefixes[SCRIPT_ADDRESS] = std::vector<unsigned char>(1,196);
        base58Prefixes[SECRET_KEY]     = std::vector<unsigned char>(1,239);
        base58Prefixes[STEALTH_ADDRESS] = std::vector<unsigned char>(1,40);
        base58Prefixes[EXT_PUBLIC_KEY] = list_of(0x04)(0x35)(0x87)(0xCF).convert_to_container<std::vector<unsigned char> >();
        base58Prefixes[EXT_SECRET_KEY] = list_of(0x04)(0x35)(0x83)(0x94).convert_to_container<std::vector<unsigned char> >();

        vFixedSeeds.clear();
        vSeeds.clear();
        vSeeds.push_back(CDNSSeedData("127.0.0.1", "127.0.0.1"));
        
        convertSeed6(vFixedSeeds, pnSeed6_test, ARRAYLEN(pnSeed6_test));

	nPoolMaxTransactions = 3;
        strDarksendPoolDummyAddress = "gCJDCcmcVZcfnwAZdEt7dg5s5jjAbDp9dZdhXAmP5NM";
        nLastPOWBlock 	= 300;
    }

    virtual const CBlock& GenesisBlock() const { return genesis; }
    virtual Network NetworkID() const { return CChainParams::TESTNET; }

    virtual const vector<CAddress>& FixedSeeds() const {
        return vFixedSeeds;
    }
protected:
    CBlock genesis;
    vector<CAddress> vFixedSeeds;

};
static CTestNetParams testNetParams;


static CChainParams *pCurrentParams = &mainParams;

const CChainParams &Params() {
    return *pCurrentParams;
}

void SelectParams(CChainParams::Network network) {
    switch (network) {
        case CChainParams::MAIN:
            pCurrentParams = &mainParams;
            break;
        case CChainParams::TESTNET:
            pCurrentParams = &testNetParams;
            break;
        default:
            assert(false && "Unimplemented network");
            return;
    }
}

bool SelectParamsFromCommandLine() {
    
    bool fTestNet = GetBoolArg("-testnet", false);
    
    if (fTestNet) {
        SelectParams(CChainParams::TESTNET);
    } else {
        SelectParams(CChainParams::MAIN);
    }
    return true;
}
