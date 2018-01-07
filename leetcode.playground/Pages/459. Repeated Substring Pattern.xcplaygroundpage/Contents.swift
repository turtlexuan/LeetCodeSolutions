//: [Previous](@previous)

import Foundation

/*
 
 459. Repeated Substring Pattern
 
 Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.
 
 Example 1:
    Input: "abab"
    Output: True
 
    Explanation: It's the substring "ab" twice.
 
 Example 2:
    Input: "aba"
    Output: False
 
 Example 3:
    Input: "abcabcabcabc"
    Output: True
 
    Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)
 
 */

class Solution {
    
    // Time Limit Exceeded
    func repeatedSubstringPattern(_ s: String) -> Bool {
        
        if s.count < 2 {
            return false
        }
        
        let count = Int(s.count / 2)
        
        for i in 1...count {
            
            if s.count % i == 0 {
                
                let sub = String(s.prefix(i))
                let newS = String(repeating: sub, count: s.count / i)
                
                if newS == s {
                    return true
                }
            }
        }
        
        return false
    }
}

let solution = Solution()
solution.repeatedSubstringPattern("yxsprjsmigtwjijeljrflpnnahdelarjxkbqttebbyakijquuhbfxrvxyabjavvzfwrarvctvedenwajdboaulasldenybmfxdgobkjwopcdlcmogcraotvzybnxcbebfkrgubeiqhldlzttckwqfrpeuedwghxnsovorzzhimkumepoqlgwevcycfwiovxgksxdtwlcixyudnkuzqsdoweqbaapyxykrxnktymdykabykxzbrernkhqnjiliivzfijyjwdhidkiokhrboipyrhlapwixrhccscloguzjehzorqsfahdrortgnddhkijfkuvsoucucblvudaumfmcwhiklorxwaciwybmsfgwitrcytzmzlpvszhfnadlcfuadxmycvumqmrphqbgbsevsnbfqgtulnvrmhpoejcvxtmfjnnmgriahlfxrarenovzwkpcwsxtljaxzojhhthogonzpheevzetkvygpvbdhcaisjpbfwslmflbopgmqmfcjdkzbmckqeskpjluhditltvzkdlaptdyynzbbdlthfdzopvvudpfymhipslenqemfenhjbcrggsxxnsrtjxrveckypqofxckbrtkswdbexyblqsearxxxbiwqakvxoiafdnybszfqxibpdhrugpsizqyzcwzqgzvjovnhuuxtdalgjccpruzqkysmwrecsalhvaqsvnlynygybinufpnpnfejyinskybgzrywelutkctnkjhryujnbpwbxluklvqkpqivdcrpgkcttmkrgtekiclinfszdklscuphygzhrdampmeygkiqptacbudggraknpslwrupuubmhhkpsuhhnklqepwniwxvmpikidzdzargibxcvhjkrudvlzitwiqkxzugctlbtekdfjfcqqohnrfytpupxkzvltdnoqrjubnbkufdltkynpygfsxcfyzqreghuxqoadrmywpjscjfrhnyakdhiczbjfideaugelvekkpcmyjgfwghijqsoqtxxdacdwkjifpusgweefmmdtvlcmdqeypbdqfimqswvjqnqouwvgkybijguowyombrehasxurufjkvaeuvmguoofukuskkgmcmvehsyyodjybjcxfrdbfugbecvpnedrqyvxstxgyjfzsjyzaeahyhicjgtykwpawkaofxvegafbleamibtikekvkguuelwbwwpdwkhemphyvimflhnxlzsxforkaqlymcbknlrbaybvinavxpsiolguzzgzptzevbqkmhmogpjqflmcaekqpsmrsssjlsnjvetjnhxvxgmetygveslwlynfqhoezenwkifxqctnkhtdhzalrmhekwlcecifgxcqghpwmilwrecyfckyotdasqfysnfylhqtripfqcbkifiniulyqqziheiztnagxszqaovtsydaennoibmyrniatqcndetayvqzjnuemzesmugwxuuqierbuvqyzmaxhtysguwstdmizsgwnboxhhyccrcbdczkvzeeubynglxfdedshtpobqsdhufkzgwuhaabdzrlkosnuxibrxssnkxuhcggkecshdvkcmymdqbxolbfjtzyfwtmbbungzfpcbbgpzusqxqejrlsmkqtglijpcxxbcmffnlvnfpddfjmyugkeyemkmyzqvwszkxfxlckqrpvzyjxupkyoonaclbsgzmhjmogxstpkilljwidoseeitemefhmgtvpfkxecquobhzkfkptetxpmdbskigqecflmdqqvmfwveiaqyuvrtkgxlyhwhyalfnzifpgrucoblprjloceykbkjlisjkdoxczdtfwqjlrwckhnzkrxuvjfgtzrdchdgiicneszrlvtxdiwncwjxhrfbqygvfjdorfdyzcrkylidvgqxebwmubplzxihjlvataasdsfdfngavyyabuowyfhzcpglcdoxeoqjivmnkuofsohtivpiayifpoquugryvjjfgvtqrjyjxhefdwqfwykmodiijzigjrmpohifqiqnpvuutkcpiodzrljdlslwlxnagxhwfylxvgtosvfdkjcdulihfudrtrtaoaywakvvqolkmtnycpdwdmeigjbbcubrxapxmkveaiombckftocwaifitgjwdnpapezbqwhqhvdizpotdspfcwpxfbtiqikfolieipxpmazmrphxjyenvulcxeknpwsfhckptjgflitczczjbeyyajaxqmkhiempgyfzhngsvcvxewghcgfcqhzitlpbpbrvaywjlfcjhzgnxoxauecmmeufpljfpacrazaneewndecbuzbrgffsjczznieckitkhwynawcgdfjzgmqmrygbaicpqiudqpnylnnoksupzdofphuifcjhknydvsgmivmvjbjttdksiyazhuimytvjhuocmuqwpcsyedtzjdsresrlozamsvxbrlegfucxzwxfcrelwyeaqvoewotrlssdeyjltnkumibozfzxedawbodzeyqrqlwujhievsyhabxbhybndblerogvoyofjlbtsjxpeyyezviitjxxklddblaqkovtzwougojkmiqndyyzjxyvidykpyaznxuotjibxsnlagafgyeqycligmsxkuwztqonbyqyqejsmmasmeikjwtrinqukmwdemsikjgdpsxbextqeedpcyimlygxmcbsqtabehetbdwhbqxfwcwyaekmcsloxmgnihooquityeabwzguccscgcqkxcyuqghapyphszasfctccbygdrilvbxsfxmxgwyvupfoohhtkaxocwuhnevkfudmsrkynkvhzawnifiufgkjcetrkqdskgecyqanayvzytoiyxefdorhukafadxkmbpmsrzupuuqpiypffvktorqytvaxsmlvbxpvwkkteaiobawgvgblarjtolsgzdebatyzdksjncyocwwzczkctvyhgqqgwujynhxttpcgscuuyswdsgfncfukwksugbsukqpeftkzwhwwbszvyhicmfnkpfewjzsvphbucmwyvsxwkyukhcnwhcizjpxuorqdarzcfvdcnabzavkixzehdmgoddjrubuwuuycrbehbfgcasmatshygpnkuybqbwmvskxjmcspjztmtfmnxvlemaogarwbnizhuwtgalykmrygzktwhgctjsblkxnzhmhdkamlnkxabvgahbzqjblsumegjtfshmvrohectbevykxhnyxwcirywxefqjzxwxqmevoyyuvzeugrvgqxqhvnezuwiwvgtltzijzjewikrqeoyulpbiehhadrwaapnvrygqhmnrxghbuivfzypdhwdmpcmrtbokzvbghozewjhqrexqemvlkaxbcltwnhgmcjvmzwqvfalweiojujwekuimhbkwktjncgbccrzitlgyvxjsgfysbghjjrfumqjpyktddsnxftvdqgxzlvrneaynufhgyqxwaqzelmbsiyxaeubrqvguvehpmrykhvikokqzwttgtrjxlmqdhxzfdjwpaubjqkveulfseabxrmwfyniiminprlhtgicyuyeqlljslmpfyokwduepetexfnsnwvnsvtjiesaresyegkajhhylcelhsdwqalixergklgcrycvgnypufphjustowpewbmufgasriwjjygpnehhlwpvsjogffkegzyofagykcjtaqjousxioodhytpfycjfbjvilbgwfqphiaxesvmjlpslihrjjcommjuxmdvrtladnyhivurgljswslfcnvqzglzsouljhnmvltfgpwpdhhzzugdhbujjhidveogodsjpnqxfmmivvjurpazswibdseawugkxavonlmuzacuynrpcrqwnyxsqbspxyzvyxjnixikameacxpeogddgavxenmbnnylkkbvjlhjzljbjbgzjjfrlaopqctdstpedqzndgycukefnmgyxlpimgaeivhcowhuoijrrhuntasgmagjmwractemolpfkwzaeiuxroknqcvcfclryeraaxmoidvuzuvgepdyfolvsgzxkkqiqjkqgzhrccnexikdzpbefobyvaxhmqqdzctibazedmkcxufwlhdrxershqatgswgusoyupexdobckhzvqemnkfirwklcejkabyyypcvvqzxciyyacmpnsxeqjrsndfogdoevrcqjbnmjmmjqyydsykihddxginnnbtkuvaewqshceqscryxrkhankxuumjkqcukaxqwniermwlrpjqgtxhjkgfetqqjslvsimrxuxojvzallqtgpcrzjwgemwphjkbrwsqrreangcatuvblytlhprlepalzmmsjfjcynclvgnqcjsnhlaqcrdghfrgrgyanjclxgzuomlqxfgeqguuaxdjcuruapwpbzbyhauwohommusednzdmcmrydnbulqvktvutsqizewmboqedrjqtvjuayxujnswhpqchgmhmitpxltadcsyzdszbpwnfojodbqnhduvnplmagpdljcknwmqokdtaohfpzsyemwsbjecpthcdjpsibkwnqpneyswxlwczswbbcfrwmvbykvgnfcavtnatgyqtuusnsvovahtpfunppvduxdssrslzsdumambukqpkzizeeowtjzqieiavcnwutsivhkprcfbdpdkurgnbffjjpmhrbfnuywpfgfwimzlbcvvudlxisguiudzwknqkliprpnbbpoermcnpnmahvuppzrljeewronkdblgszkllozdbndjizayyrljxrfofvyiylqqlbbypcbtqeeydgwdykpvbwmhrkrpwifjljjcllxbrbcxkacikrfmqrvjemzcugnfrwidhfgbjiyvlcdvukjmeevitwmndzvwvfzfmiixsgsdixzeiksmpowkkixphumeznlovtlobetmdssldlzuzvelfddyxsprjsmigtwjijeljrflpnnahdelarjxkbqttebbyakijquuhbfxrvxyabjavvzfwrarvctvedenwajdboaulasldenybmfxdgobkjwopcdlcmogcraotvzybnxcbebfkrgubeiqhldlzttckwqfrpeuedwghxnsovorzzhimkumepoqlgwevcycfwiovxgksxdtwlcixyudnkuzqsdoweqbaapyxykrxnktymdykabykxzbrernkhqnjiliivzfijyjwdhidkiokhrboipyrhlapwixrhccscloguzjehzorqsfahdrortgnddhkijfkuvsoucucblvudaumfmcwhiklorxwaciwybmsfgwitrcytzmzlpvszhfnadlcfuadxmycvumqmrphqbgbsevsnbfqgtulnvrmhpoejcvxtmfjnnmgriahlfxrarenovzwkpcwsxtljaxzojhhthogonzpheevzetkvygpvbdhcaisjpbfwslmflbopgmqmfcjdkzbmckqeskpjluhditltvzkdlaptdyynzbbdlthfdzopvvudpfymhipslenqemfenhjbcrggsxxnsrtjxrveckypqofxckbrtkswdbexyblqsearxxxbiwqakvxoiafdnybszfqxibpdhrugpsizqyzcwzqgzvjovnhuuxtdalgjccpruzqkysmwrecsalhvaqsvnlynygybinufpnpnfejyinskybgzrywelutkctnkjhryujnbpwbxluklvqkpqivdcrpgkcttmkrgtekiclinfszdklscuphygzhrdampmeygkiqptacbudggraknpslwrupuubmhhkpsuhhnklqepwniwxvmpikidzdzargibxcvhjkrudvlzitwiqkxzugctlbtekdfjfcqqohnrfytpupxkzvltdnoqrjubnbkufdltkynpygfsxcfyzqreghuxqoadrmywpjscjfrhnyakdhiczbjfideaugelvekkpcmyjgfwghijqsoqtxxdacdwkjifpusgweefmmdtvlcmdqeypbdqfimqswvjqnqouwvgkybijguowyombrehasxurufjkvaeuvmguoofukuskkgmcmvehsyyodjybjcxfrdbfugbecvpnedrqyvxstxgyjfzsjyzaeahyhicjgtykwpawkaofxvegafbleamibtikekvkguuelwbwwpdwkhemphyvimflhnxlzsxforkaqlymcbknlrbaybvinavxpsiolguzzgzptzevbqkmhmogpjqflmcaekqpsmrsssjlsnjvetjnhxvxgmetygveslwlynfqhoezenwkifxqctnkhtdhzalrmhekwlcecifgxcqghpwmilwrecyfckyotdasqfysnfylhqtripfqcbkifiniulyqqziheiztnagxszqaovtsydaennoibmyrniatqcndetayvqzjnuemzesmugwxuuqierbuvqyzmaxhtysguwstdmizsgwnboxhhyccrcbdczkvzeeubynglxfdedshtpobqsdhufkzgwuhaabdzrlkosnuxibrxssnkxuhcggkecshdvkcmymdqbxolbfjtzyfwtmbbungzfpcbbgpzusqxqejrlsmkqtglijpcxxbcmffnlvnfpddfjmyugkeyemkmyzqvwszkxfxlckqrpvzyjxupkyoonaclbsgzmhjmogxstpkilljwidoseeitemefhmgtvpfkxecquobhzkfkptetxpmdbskigqecflmdqqvmfwveiaqyuvrtkgxlyhwhyalfnzifpgrucoblprjloceykbkjlisjkdoxczdtfwqjlrwckhnzkrxuvjfgtzrdchdgiicneszrlvtxdiwncwjxhrfbqygvfjdorfdyzcrkylidvgqxebwmubplzxihjlvataasdsfdfngavyyabuowyfhzcpglcdoxeoqjivmnkuofsohtivpiayifpoquugryvjjfgvtqrjyjxhefdwqfwykmodiijzigjrmpohifqiqnpvuutkcpiodzrljdlslwlxnagxhwfylxvgtosvfdkjcdulihfudrtrtaoaywakvvqolkmtnycpdwdmeigjbbcubrxapxmkveaiombckftocwaifitgjwdnpapezbqwhqhvdizpotdspfcwpxfbtiqikfolieipxpmazmrphxjyenvulcxeknpwsfhckptjgflitczczjbeyyajaxqmkhiempgyfzhngsvcvxewghcgfcqhzitlpbpbrvaywjlfcjhzgnxoxauecmmeufpljfpacrazaneewndecbuzbrgffsjczznieckitkhwynawcgdfjzgmqmrygbaicpqiudqpnylnnoksupzdofphuifcjhknydvsgmivmvjbjttdksiyazhuimytvjhuocmuqwpcsyedtzjdsresrlozamsvxbrlegfucxzwxfcrelwyeaqvoewotrlssdeyjltnkumibozfzxedawbodzeyqrqlwujhievsyhabxbhybndblerogvoyofjlbtsjxpeyyezviitjxxklddblaqkovtzwougojkmiqndyyzjxyvidykpyaznxuotjibxsnlagafgyeqycligmsxkuwztqonbyqyqejsmmasmeikjwtrinqukmwdemsikjgdpsxbextqeedpcyimlygxmcbsqtabehetbdwhbqxfwcwyaekmcsloxmgnihooquityeabwzguccscgcqkxcyuqghapyphszasfctccbygdrilvbxsfxmxgwyvupfoohhtkaxocwuhnevkfudmsrkynkvhzawnifiufgkjcetrkqdskgecyqanayvzytoiyxefdorhukafadxkmbpmsrzupuuqpiypffvktorqytvaxsmlvbxpvwkkteaiobawgvgblarjtolsgzdebatyzdksjncyocwwzczkctvyhgqqgwujynhxttpcgscuuyswdsgfncfukwksugbsukqpeftkzwhwwbszvyhicmfnkpfewjzsvphbucmwyvsxwkyukhcnwhcizjpxuorqdarzcfvdcnabzavkixzehdmgoddjrubuwuuycrbehbfgcasmatshygpnkuybqbwmvskxjmcspjztmtfmnxvlemaogarwbnizhuwtgalykmrygzktwhgctjsblkxnzhmhdkamlnkxabvgahbzqjblsumegjtfshmvrohectbevykxhnyxwcirywxefqjzxwxqmevoyyuvzeugrvgqxqhvnezuwiwvgtltzijzjewikrqeoyulpbiehhadrwaapnvrygqhmnrxghbuivfzypdhwdmpcmrtbokzvbghozewjhqrexqemvlkaxbcltwnhgmcjvmzwqvfalweiojujwekuimhbkwktjncgbccrzitlgyvxjsgfysbghjjrfumqjpyktddsnxftvdqgxzlvrneaynufhgyqxwaqzelmbsiyxaeubrqvguvehpmrykhvikokqzwttgtrjxlmqdhxzfdjwpaubjqkveulfseabxrmwfyniiminprlhtgicyuyeqlljslmpfyokwduepetexfnsnwvnsvtjiesaresyegkajhhylcelhsdwqalixergklgcrycvgnypufphjustowpewbmufgasriwjjygpnehhlwpvsjogffkegzyofagykcjtaqjousxioodhytpfycjfbjvilbgwfqphiaxesvmjlpslihrjjcommjuxmdvrtladnyhivurgljswslfcnvqzglzsouljhnmvltfgpwpdhhzzugdhbujjhidveogodsjpnqxfmmivvjurpazswibdseawugkxavonlmuzacuynrpcrqwnyxsqbspxyzvyxjnixikameacxpeogddgavxenmbnnylkkbvjlhjzljbjbgzjjfrlaopqctdstpedqzndgycukefnmgyxlpimgaeivhcowhuoijrrhuntasgmagjmwractemolpfkwzaeiuxroknqcvcfclryeraaxmoidvuzuvgepdyfolvsgzxkkqiqjkqgzhrccnexikdzpbefobyvaxhmqqdzctibazedmkcxufwlhdrxershqatgswgusoyupexdobckhzvqemnkfirwklcejkabyyypcvvqzxciyyacmpnsxeqjrsndfogdoevrcqjbnmjmmjqyydsykihddxginnnbtkuvaewqshceqscryxrkhankxuumjkqcukaxqwniermwlrpjqgtxhjkgfetqqjslvsimrxuxojvzallqtgpcrzjwgemwphjkbrwsqrreangcatuvblytlhprlepalzmmsjfjcynclvgnqcjsnhlaqcrdghfrgrgyanjclxgzuomlqxfgeqguuaxdjcuruapwpbzbyhauwohommusednzdmcmrydnbulqvktvutsqizewmboqedrjqtvjuayxujnswhpqchgmhmitpxltadcsyzdszbpwnfojodbqnhduvnplmagpdljcknwmqokdtaohfpzsyemwsbjecpthcdjpsibkwnqpneyswxlwczswbbcfrwmvbykvgnfcavtnatgyqtuusnsvovahtpfunppvduxdssrslzsdumambukqpkzizeeowtjzqieiavcnwutsivhkprcfbdpdkurgnbffjjpmhrbfnuywpfgfwimzlbcvvudlxisguiudzwknqkliprpnbbpoermcnpnmahvuppzrljeewronkdblgszkllozdbndjizayyrljxrfofvyiylqqlbbypcbtqeeydgwdykpvbwmhrkrpwifjljjcllxbrbcxkacikrfmqrvjemzcugnfrwidhfgbjiyvlcdvukjmeevitwmndzvwvfzfmiixsgsdixzeiksmpowkkixphumeznlovtlobetmdssldlzuzvelfdd")
