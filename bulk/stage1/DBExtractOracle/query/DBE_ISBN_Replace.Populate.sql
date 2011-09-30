BEGIN
    --------------------------------------------------
    --------------------------------------------------
    --------------------------------------------------
    --
    -- ISBN
    --
    -- FIX BAD ISBN (with a <CR> at the end)
    --
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  2620, 'B', '9788434823013'||CHR(13)||CHR(10), 'I', '9788434823013', 'P');
    COMMIT;
    --
    -- length 15 - 1 case - SOLVED 1 - PENDING 0
    --
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 45019, 'I', '60656201154532X',  'I', '8424119967',      'P');
    COMMIT;
    --
    -- length 11 - 1 case - SOLVED 1 - PENDING 0
    --
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(146114, 'I', '60121571282',      'B', '601215712827',    'P');
    COMMIT;
    --
    -- length 8 - 396 cases - SOLVED 275 - PENDING 121
    --
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8446, 'I',    '28724151',      'I',   '0028724151',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8456, 'I',    '27615618',      'I',   '0027615618',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8457, 'I',    '27617319',      'I',   '0027617319',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8458, 'I',    '27546411',      'I',   '0027546411',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8474, 'I',    '28970144',      'I',   '0028970144',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8505, 'I',    '61067105',      'I',   '0061067105',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8506, 'I',    '61067148',      'I',   '0061067148',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8507, 'I',    '61067768',      'I',   '0061067768',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8508, 'I',    '61067725',      'I',   '0061067725',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8509, 'I',    '61067709',      'I',   '0061067709',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8511, 'I',    '61067229',      'I',   '0061067229',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8512, 'I',    '61067822',      'I',   '0061067822',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8513, 'I',    '61067814',      'I',   '0061067814',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8517, 'I',    '61061204',      'I',   '0061061204',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8519, 'I',    '61060852',      'I',   '0061060852',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  8520, 'I',    '61060828',      'I',   '0061060828',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 19927, 'I',    '61002437',      'I',   '0061002437',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22439, 'I',    '79245412',      'I',   '079245412X',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22484, 'I',    '66337038',      'I',   '0066337038',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22539, 'I',    '66337054',      'I',   '0066337054',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22542, 'I',    '66337003',      'I',   '0066337003',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22620, 'I',    '61006734',      'I',   '0061006734',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22627, 'I',    '26887517',      'I',   '0026887517',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22628, 'I',    '26893304',      'I',   '0026893304',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22629, 'I',    '26893274',      'I',   '0026893274',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22630, 'I',    '26887533',      'I',   '0026887533',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22631, 'I',    '26893290',      'I',   '0026893290',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22632, 'I',    '26893266',      'I',   '0026893266',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22662, 'I',    '26890097',      'I',   '0026890097',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22665, 'I',    '26890046',      'I',   '0026890046',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22669, 'I',    '26890054',      'I',   '0026890054',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22670, 'I',    '26890062',      'I',   '0026890062',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 22761, 'I',    '66337046',      'I',   '0066337046',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37379, 'I',    '28609158',      'I',   '0028609158',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37380, 'I',    '28606906',      'I',   '0028606906',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37407, 'I',    '28612035',      'I',   '0028612035',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37409, 'I',    '28608623',      'I',   '0028608623',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37411, 'I',    '28606353',      'I',   '0028606353',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37415, 'I',    '28613880',      'I',   '0028613880',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37429, 'I',    '28616529',      'I',   '0028616529',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37430, 'I',    '28615786',      'I',   '0028615786',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37454, 'I',    '28611330',      'I',   '0028611330',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37474, 'I',    '28606256',      'I',   '0028606256',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 37475, 'I',    '28604652',      'I',   '0028604652',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 43432, 'I',    '10763171',      'S',   '10763171',      'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48019, 'I',    '14010402',      'I',   '0014010402',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48025, 'I',    '21693110',      'I',   '0021693110',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48164, 'I',    '14018144',      'I',   '0014018144',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48180, 'I',    '14046865',      'I',   '0014046865',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48198, 'I',    '14051273',      'I',   '014051273X',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48701, 'I',    '60923466',      'I',   '0060923466',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48704, 'I',    '62734059',      'I',   '0062734059',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48705, 'I',    '62502441',      'I',   '0062502441',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48706, 'I',    '64450783',      'I',   '0064450783',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48707, 'I',    '60216131',      'I',   '0060216131',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48709, 'I',    '60246537',      'I',   '0060246537',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48710, 'I',    '64450562',      'I',   '0064450562',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48711, 'I',    '60204109',      'I',   '0060204109',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48713, 'I',    '60175184',      'I',   '0060175184',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48714, 'I',    '60923199',      'I',   '0060923199',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48715, 'I',    '60968753',      'I',   '0060968753',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48717, 'I',    '64450201',      'I',   '0064450201',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48720, 'I',    '60950862',      'I',   '0060950862',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48721, 'I',    '60952121',      'I',   '0060952121',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48722, 'I',    '61010693',      'I',   '0061010693',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 48723, 'I',    '64451054',      'I',   '0064451054',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50987, 'I',    '91771757',      'I',   '0091771757',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50991, 'I',    '91782368',      'I',   '0091782368',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50994, 'I',    '91736994',      'I',   '0091736994',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50995, 'I',    '91775124',      'I',   '0091775124',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50996, 'I',    '91777798',      'I',   '0091777798',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50998, 'I',    '99307014',      'I',   '0099307014',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 50999, 'I',    '91778824',      'I',   '0091778824',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 51001, 'I',    '91738458',      'I',   '0091738458',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 51874, 'I',    '67903045',      'I',   '067903045X',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 51877, 'I',    '91751276',      'I',   '0091751276',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 51955, 'I',    '91751292',      'I',   '0091751292',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 52643, 'I',    '26305909',      'I',   '0026305909',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 52684, 'I',    '28960904',      'I',   '0028960904',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 52697, 'I',    '25994611',      'I',   '0025994611',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 53125, 'I',    '67983006',      'I',   '0067983006',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 53250, 'I',    '89577450',      'I',   '089577450X',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 53280, 'I',    '67986668',      'I',   '0067986668',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 53469, 'I',    '39482715',      'I',   '0039482715',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 54476, 'I',    '28611357',      'I',   '0028611357',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56330, 'I',    '60951516',      'I',   '0060951516',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56352, 'I',    '61067687',      'I',   '0061067687',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56353, 'I',    '61061379',      'I',   '0061061379',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56356, 'I',    '61004170',      'I',   '0061004170',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56357, 'I',    '61061441',      'I',   '0061061441',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56362, 'I',    '61061867',      'I',   '0061061867',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56364, 'I',    '61062995',      'I',   '0061062995',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56367, 'I',    '61061794',      'I',   '0061061794',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56369, 'I',    '61062022',      'I',   '0061062022',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56371, 'I',    '61050091',      'I',   '0061050091',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56373, 'I',    '61067679',      'I',   '0061067679',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56376, 'I',    '61060003',      'I',   '0061060003',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56379, 'I',    '61061654',      'I',   '0061061654',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56385, 'I',    '61061425',      'I',   '0061061425',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56386, 'I',    '61061697',      'I',   '0061061697',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56389, 'I',    '61060119',      'I',   '0061060119',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56392, 'I',    '61061700',      'I',   '0061061700',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56393, 'I',    '61060054',      'I',   '0061060054',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56394, 'I',    '61060488',      'I',   '0061060488',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56395, 'I',    '61060127',      'I',   '0061060127',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56396, 'I',    '61067342',      'I',   '0061067342',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56399, 'I',    '61061980',      'I',   '0061061980',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56403, 'I',    '61060348',      'I',   '0061060348',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56404, 'I',    '61067237',      'I',   '0061067237',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56408, 'I',    '61061352',      'I',   '0061061352',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56410, 'I',    '61060798',      'I',   '0061060798',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56411, 'I',    '61060623',      'I',   '0061060623',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56412, 'I',    '61060372',      'I',   '0061060372',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56413, 'I',    '61060186',      'I',   '0061060186',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56414, 'I',    '61060615',      'I',   '0061060615',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56415, 'I',    '61060844',      'I',   '0061060844',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56416, 'I',    '61060194',      'I',   '0061060194',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56417, 'I',    '61060429',      'I',   '0061060429',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56418, 'I',    '61050172',      'I',   '0061050172',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56419, 'I',    '61062049',      'I',   '0061062049',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56420, 'I',    '61067261',      'I',   '0061067261',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56422, 'I',    '61067938',      'I',   '0061067938',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56423, 'I',    '61050067',      'I',   '0061050067',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56424, 'I',    '60951486',      'I',   '0060951486',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56425, 'I',    '60965827',      'I',   '0060965827',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56426, 'I',    '60951990',      'I',   '0060951990',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56427, 'I',    '60968613',      'I',   '0060968613',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 56428, 'I',    '61050024',      'I',   '0061050024',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 59076, 'I',    '44920636',      'I',   '0044920636',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 59473, 'I',    '62502182',      'I',   '0062502182',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60172, 'I',    '61090395',      'I',   '0061090395',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60175, 'I',    '61006246',      'I',   '0061006246',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60176, 'I',    '61000043',      'I',   '0061000043',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60181, 'I',    '61091790',      'I',   '0061091790',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60183, 'I',    '61080403',      'I',   '0061080403',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60184, 'I',    '61099163',      'I',   '0061099163',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60187, 'I',    '60924772',      'I',   '0060924772',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60188, 'I',    '61096083',      'I',   '0061096083',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60189, 'I',    '61006238',      'I',   '0061006238',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60191, 'I',    '61000019',      'I',   '0061000019',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60194, 'I',    '61002062',      'I',   '0061002062',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60195, 'I',    '61043516',      'I',   '0061043516',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60198, 'I',    '61002070',      'I',   '0061002070',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60200, 'I',    '61090417',      'I',   '0061090417',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60202, 'I',    '61099473',      'I',   '0061099473',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60203, 'I',    '61043532',      'I',   '0061043532',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60204, 'I',    '61099708',      'I',   '0061099708',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60205, 'I',    '61080608',      'I',   '0061080608',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60206, 'I',    '61080535',      'I',   '0061080535',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60207, 'I',    '61099325',      'I',   '0061099325',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60210, 'I',    '61000027',      'I',   '0061000027',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60211, 'I',    '61092088',      'I',   '0061092088',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60217, 'I',    '61090530',      'I',   '0061090530',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60226, 'I',    '61006491',      'I',   '0061006491',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60229, 'I',    '61042935',      'I',   '0061042935',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60230, 'I',    '61007226',      'I',   '0061007226',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60231, 'I',    '61057924',      'I',   '0061057924',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60232, 'I',    '61094196',      'I',   '0061094196',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60235, 'I',    '61092428',      'I',   '0061092428',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60236, 'I',    '61012262',      'I',   '0061012262',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60237, 'I',    '61041807',      'I',   '0061041807',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60239, 'I',    '61003956',      'I',   '0061003956',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60240, 'I',    '61092800',      'I',   '0061092800',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60242, 'I',    '61043494',      'I',   '0061043494',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60244, 'I',    '61099015',      'I',   '0061099015',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60245, 'I',    '61043524',      'I',   '0061043524',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60246, 'I',    '61042781',      'I',   '0061042781',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60248, 'I',    '61002828',      'I',   '0061002828',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60249, 'I',    '61095869',      'I',   '0061095869',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60253, 'I',    '61095559',      'I',   '0061095559',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60254, 'I',    '61000507',      'I',   '0061000507',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60256, 'I',    '61099643',      'I',   '0061099643',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60257, 'I',    '61094145',      'I',   '0061094145',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60263, 'I',    '61056111',      'I',   '0061056111',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60267, 'I',    '61099775',      'I',   '0061099775',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60268, 'I',    '61056995',      'I',   '0061056995',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60269, 'I',    '61094129',      'I',   '0061094129',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60270, 'I',    '61056219',      'I',   '0061056219',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60271, 'I',    '61080527',      'I',   '0061080527',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60272, 'I',    '61091316',      'I',   '0061091316',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60274, 'I',    '61081868',      'I',   '0061081868',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60275, 'I',    '61091669',      'I',   '0061091669',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60277, 'I',    '60987049',      'I',   '0060987049',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60280, 'I',    '61095508',      'I',   '0061095508',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60281, 'I',    '61080519',      'I',   '0061080519',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60287, 'I',    '61002747',      'I',   '0061002747',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60289, 'I',    '60966122',      'I',   '0060966122',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60290, 'I',    '61091499',      'I',   '0061091499',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60292, 'I',    '61090808',      'I',   '0061090808',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60293, 'I',    '61099651',      'I',   '0061099651',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60294, 'I',    '61091472',      'I',   '0061091472',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60296, 'I',    '61042757',      'I',   '0061042757',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60297, 'I',    '61094617',      'I',   '0061094617',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60298, 'I',    '61005606',      'I',   '0061005606',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60300, 'I',    '61080217',      'I',   '0061080217',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60301, 'I',    '61099732',      'I',   '0061099732',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60302, 'I',    '61085154',      'I',   '0061085154',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60303, 'I',    '61006769',      'I',   '0061006769',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60305, 'I',    '61099368',      'I',   '0061099368',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60307, 'I',    '61040932',      'I',   '0061040932',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60308, 'I',    '61091685',      'I',   '0061091685',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60310, 'I',    '60391499',      'I',   '0060391499',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60312, 'I',    '61006254',      'I',   '0061006254',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60313, 'I',    '61007145',      'I',   '0061007145',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60317, 'I',    '61091502',      'I',   '0061091502',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60318, 'I',    '61091871',      'I',   '0061091871',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60322, 'I',    '61010804',      'I',   '0061010804',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60323, 'I',    '61041394',      'I',   '0061041394',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60328, 'I',    '61099295',      'I',   '0061099295',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60334, 'I',    '61007072',      'I',   '0061007072',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60337, 'I',    '61099287',      'I',   '0061099287',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60338, 'I',    '61002658',      'I',   '0061002658',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60339, 'I',    '61092533',      'I',   '0061092533',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60343, 'I',    '61042838',      'I',   '0061042838',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60345, 'I',    '61043044',      'I',   '0061043044',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60346, 'I',    '61003824',      'I',   '0061003824',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60347, 'I',    '61042293',      'I',   '0061042293',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60348, 'I',    '61092819',      'I',   '0061092819',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60349, 'I',    '61093653',      'I',   '0061093653',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60353, 'I',    '61091952',      'I',   '0061091952',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60355, 'I',    '61042986',      'I',   '0061042986',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 60356, 'I',    '61080748',      'I',   '0061080748',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 61684, 'I',    '61012696',      'I',   '0061012696',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62959, 'I',    '28617355',      'I',   '0028617355',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62961, 'I',    '28617606',      'I',   '0028617606',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62962, 'I',    '28619757',      'I',   '0028619757',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62963, 'I',    '28616340',      'I',   '0028616340',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62965, 'I',    '28619889',      'I',   '0028619889',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62966, 'I',    '28617800',      'I',   '0028617800',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 62967, 'I',    '28617819',      'I',   '0028617819',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 63182, 'I',    '61012289',      'I',   '0061012289',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 63183, 'I',    '61095540',      'I',   '0061095540',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65506, 'I',    '28618920',      'I',   '0028618920',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65507, 'I',    '28616456',      'I',   '0028616456',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65510, 'I',    '28616391',      'I',   '0028616391',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65514, 'I',    '28615808',      'I',   '0028615808',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65521, 'I',    '28609204',      'I',   '0028609204',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65523, 'I',    '28616715',      'I',   '0028616715',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65531, 'I',    '28615654',      'I',   '0028615654',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65537, 'I',    '28616383',      'I',   '0028616383',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65545, 'I',    '28616413',      'I',   '0028616413',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65546, 'I',    '28616561',      'I',   '0028616561',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 65547, 'I',    '28616464',      'I',   '0028616464',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 69809, 'I',    '28619242',      'I',   '0028619242',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 75127, 'I',    '14013770',      'I',   '0014013770',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 77694, 'I',    '60977264',      'I',   '0060977264',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 77699, 'I',    '62513346',      'I',   '0062513346',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 77714, 'I',    '64442438',      'I',   '0064442438',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 77715, 'I',    '64442128',      'I',   '0064442128',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 83663, 'I',    '15141799',      'S',     '15141799',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 83862, 'I',    '15141357',      'S',     '15141357',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 86666, 'I',    '81744226',      'I',   '081744226X',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 86864, 'I',    '60171081',      'I',   '0060171081',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 87479, 'I',    '14018497',      'I',   '0014018497',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 87740, 'I',    '14018810',      'I',   '0014018810',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 90859, 'I',    '15144755',      'S',     '15144755',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92602, 'I',    '28611446',      'I',   '0028611446',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92604, 'I',    '28626168',      'I',   '0028626168',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92605, 'I',    '28620836',      'I',   '0028620836',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92609, 'I',    '28627172',      'I',   '0028627172',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92612, 'I',    '28628608',      'I',   '0028628608',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92613, 'I',    '28620364',      'I',   '0028620364',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92614, 'I',    '28626028',      'I',   '0028626028',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92616, 'I',    '28620321',      'I',   '0028620321',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92618, 'I',    '28622391',      'I',   '0028622391',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92619, 'I',    '28624408',      'I',   '0028624408',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92624, 'I',    '28629388',      'I',   '0028629388',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92632, 'I',    '28622766',      'I',   '0028622766',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92633, 'I',    '28625773',      'I',   '0028625773',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92634, 'I',    '28627792',      'I',   '0028627792',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92669, 'I',    '28626001',      'I',   '0028626001',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92681, 'I',    '28630459',      'I',   '0028630459',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 93810, 'I',    '15143694',      'S',     '15143694',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(102194, 'I',    '15148025',      'S',     '15148025',    'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(102195, 'I',    '15148874',      'S',     '15148874',    'P');
    COMMIT;
    --------------------------------------------------
    --------------------------------------------------
    --------------------------------------------------
    --
    -- YENNY
    --
    -- length 12 - 6 cases - SOLVED 6 - PENDING 0
    --
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 40077, 'Y', '290010040077',    'Y', '2900100400770', 'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(  2556, 'Y', '290010002556',    'Y', '2900100025560', 'P'); 
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 92756, 'Y', '290050927567',    'Y', '2900509275672', 'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 83791, 'Y', '290010083791',    'Y', '2900100837910', 'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES( 87003, 'Y', '290010087003',    'Y', '2900100870030', 'P');
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
        VALUES(234210, 'Y', '290012345101',    'Y', '2900123451018', 'P');
    --------------------------------------------------
    --------------------------------------------------
    --------------------------------------------------
    --
    -- BAR CODE
    --
    -- length 13 and 978 (ISBN-13) but reported as Barcode, changed to ISBN
    --
    -- TOTAL: 9041 cases
    --
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
    SELECT        I.Id_Articulo                         AS Id_Articulo,
                  I.Tipo_Codigo                         AS Tipo_Codigo,
                  I.ISBN                                AS ISBN,
                  'I'                                   AS R_Tipo_Codigo,
                  I.ISBN                                AS R_ISBN,
                  'P'                                   AS Estado_ILSA
        FROM        Articulos_ISBN I
        INNER JOIN  Articulos A
            ON      I.Id_Articulo = A.Id_Articulo AND
                    A.Categoria_Seccion IN (1, 3, 4, 5)
        WHERE       I.Id_Articulo IN (
                        SELECT        I1.Id_Articulo
                            FROM      Articulos_ISBN I1
                            WHERE     LENGTH(I1.ISBN) = 13 AND I1.Tipo_Codigo = 'B' AND
                                      (I1.ISBN LIKE '978%' OR I1.ISBN LIKE '979%')
                            GROUP BY  I1.Id_Articulo
                            HAVING    COUNT(*) = 1
                    ) AND
                    LENGTH(I.ISBN) = 13 AND I.Tipo_Codigo = 'B' AND
                    (I.ISBN LIKE '978%' OR I.ISBN LIKE '979%');
    --------------------------------------------------
    --------------------------------------------------
    --------------------------------------------------
    --
    -- OTHER
    --
    -- length 8 - 1191 cases - SOLVED 557 - PENDING 634
    --
    -- next query solves 557
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
    SELECT        I.Id_Articulo                         AS Id_Articulo,
                  I.Tipo_Codigo                         AS Tipo_Codigo,
                  I.ISBN                                AS ISBN,
                  'I'                                   AS R_Tipo_Codigo,
                  REPLACE(A.Cod_Ext_Visual, '-', '')    AS R_ISBN,
                  'P'                                   AS Estado_ILSA
      FROM        ARTICULOS_ISBN I
      INNER JOIN  ARTICULOS A
        ON        I.ID_ARTICULO = A.ID_ARTICULO AND
                  LENGTH(A.Cod_Ext_Visual) = 13
      WHERE       I.TIPO_CODIGO = 'O' AND
                  LENGTH(I.ISBN) = 8 AND
                  ( (LENGTH(REPLACE(A.Cod_Ext_Visual, '-', '')) = 10) OR
                    (LENGTH(A.Cod_Ext_Visual) = 13 AND
                     SUBSTR(A.Cod_Ext_Visual, 1, 3) IN ('978', '979')) )
      ORDER BY    A.ID_Articulo;
    COMMIT;
    --
    -- length 10 - 10048 cases - SOLVED 4817 - PENDING 5231
    --
    -- next query solves 4374
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
    SELECT        I.Id_Articulo                         AS Id_Articulo,
                  I.Tipo_Codigo                         AS Tipo_Codigo,
                  I.ISBN                                AS ISBN,
                  'I'                                   AS R_Tipo_Codigo,
                  REPLACE(A.Cod_Ext_Visual, '-', '')    AS R_ISBN,
                  'P'                                   AS Estado_ILSA
      FROM        ARTICULOS_ISBN I
      INNER JOIN  ARTICULOS A
        ON        I.ID_ARTICULO = A.ID_ARTICULO
      WHERE       I.TIPO_CODIGO = 'O' AND
                  I.ISBN NOT IN (SELECT ISBN FROM DBE_ISBN_Replace) AND
                  LENGTH(I.ISBN) = 10 AND
                  SUBSTR(I.ISBN, 1, 3) IN ('950', '987');
    COMMIT;
    -- next query solves 443
    INSERT INTO DBE_ISBN_Replace(Id_articulo, Tipo_Codigo, ISBN, R_Tipo_Codigo, R_ISBN, Estado_ILHSA)
    SELECT        I.Id_Articulo                         AS Id_Articulo,
                  I.Tipo_Codigo                         AS Tipo_Codigo,
                  I.ISBN                                AS ISBN,
                  'I'                                   AS R_Tipo_Codigo,
                  REPLACE(A.Cod_Ext_Visual, '-', '')    AS R_ISBN,
                  'P'                                   AS Estado_ILSA
      FROM        ARTICULOS_ISBN I
      INNER JOIN  ARTICULOS A
        ON        I.ID_ARTICULO = A.ID_ARTICULO AND
                  LENGTH(A.Cod_Ext_Visual) = 10
      WHERE       I.TIPO_CODIGO = 'O' AND
                  I.ISBN NOT IN (SELECT ISBN FROM DBE_ISBN_Replace) AND
                  LENGTH(I.ISBN) = 10 AND
                  SUBSTR(I.ISBN, 1, 3) IN (
                          '951', -- finland
                          '952', -- finland
                          '953', -- croacia
                          '954', -- bulgaria
                          '955', -- sri lanka
                          '956', -- chile
                          '957', -- taiwan/china
                          '958', -- colombia
                          '959', -- cuba
                          '960', -- grecia
                          '961', -- slovenia
                          '962', -- hong kong
                          '963', -- hungary
                          '964', -- iran
                          '965', -- israel
                          '966', -- ukraine
                          '967', -- malaysia
                          '968', -- mexico
                          '969', -- pakistan
                          '970', -- mexico
                          '971', -- philipines
                          '972', -- portutal
                          '973', -- romania
                          '974', -- thailand
                          '975', -- turkey
                          '976', -- caribean islands
                          '977', -- egypt
                          '978', -- nigeria
                          '979', -- indonesia
                          '980', -- venezuela
                          '981', -- singapore
                          '982', -- pacific islands
                          '983', -- malaysia
                          '984', -- bangladesh
                          '985', -- belarus
                          '986', -- taiwan/china
                          '988', -- hong kong
                          '989' -- portugal
                  );
    COMMIT;
    --
    --
    --
    --
    -- MORE PENDING CASES
    --
    --
    --
    --
    --
END;