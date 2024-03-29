--초기데이터 넘길때 조회쿼리
SELECT 'K083' AS CO_CD
     , A.BRND_CD
     , '20' AS DISTB_SHAP_CD
     , A.SHOP_SEQNO
     , '인더스트리FNC' AS CONM
     , (SELECT BRND_NM
          FROM MD_BRND_D_S2K
         WHERE BRND_CD = A.BRND_CD) AS BRND_NM
     , '가두점' AS DSTB_NM
     , B.CORCO_NM
     , A.REG_DTTM
     , '' AS INTRI_DAT
     , B.REGR_ID
     , B.COOPR_CO_REMN_NM
     , C.STCD1
     , C.MOB_NUMBER
     , B.CORCO_CD
     , C.TYPE_MANU
     , C.CATE_BUSINESS
     , C.TEL_NUMBER
     , C.CITY1
     , C.STREET
     , A.MOD_DTTM
     , SYSDATE AS MOD_DTTM
     , A.SHOP_SEQNO REP_SHOP_SEQ
     , '01' AS REP_SHOP_GRP
     , B.CORCO_NM AS REP_SHOP_NM
     , 'N' AS REGULAR_YN
     , 'N' AS OUTLET_YN
  FROM GC_CO_EVENT_INFO A
     , SR_COOPR_CO_M_S2K B
     , SR_CORCO_GNRL_X_S2K C
 WHERE A.CORCO_CD = B.CORCO_CD
   AND B.CORCO_CD = C.LIFNR1(+)
   AND B.CORCO_GB_CD = '10'
   
UNION ALL
SELECT 'K083' AS CO_CD
     , A.BRND_CD
     , '30' AS DISTB_SHAP_CD
     , A.SHOP_SEQNO
     , '인더스트리FNC' AS CONM
     , (SELECT BRND_NM
          FROM MD_BRND_D_S2K
         WHERE BRND_CD = A.BRND_CD) AS BRND_NM
     , '백화점' AS DSTB_NM
     , B.CORCO_NM
     , A.REG_DTTM
     , '' AS INTRI_DAT
     , B.REGR_ID
     , B.COOPR_CO_REMN_NM
     , C.STCD1
     , C.MOB_NUMBER
     , B.CORCO_CD
     , C.TYPE_MANU
     , C.CATE_BUSINESS
     , C.TEL_NUMBER
     , C.CITY1
     , C.STREET
     , A.MOD_DTTM
     , SYSDATE AS MOD_DTTM
     , A.SHOP_SEQNO REP_SHOP_SEQ
     , '01' AS REP_SHOP_GRP
     , B.CORCO_NM AS REP_SHOP_NM
     , 'N' AS REGULAR_YN
     , 'N' AS OUTLET_YN
  FROM GC_CO_EVENT_INFO A
     , SR_COOPR_CO_M_S2K B
     , SR_CORCO_GNRL_X_S2K C
 WHERE A.CORCO_CD = B.CORCO_CD
   AND B.CORCO_CD = C.LIFNR1(+)
   AND B.CORCO_GB_CD = '10'
   ;
   


--이후 일별 배치에 따른 조회쿼리
SELECT 'K083' AS CO_CD
     , A.BRND_CD
     , '20' AS DISTB_SHAP_CD
     , A.SHOP_SEQNO
     , '인더스트리FNC' AS CONM
     , (SELECT BRND_NM
          FROM MD_BRND_D_S2K
         WHERE BRND_CD = A.BRND_CD) AS BRND_NM
     , '가두점' AS DSTB_NM
     , B.CORCO_NM
     , A.REG_DTTM
     , '' AS INTRI_DAT
     , B.REGR_ID
     , B.COOPR_CO_REMN_NM
     , C.STCD1
     , C.MOB_NUMBER
     , B.CORCO_CD
     , C.TYPE_MANU
     , C.CATE_BUSINESS
     , C.TEL_NUMBER
     , C.CITY1
     , C.STREET
     , A.MOD_DTTM
     , SYSDATE AS MOD_DTTM
     , A.SHOP_SEQNO REP_SHOP_SEQ
     , '01' AS REP_SHOP_GRP
     , B.CORCO_NM AS REP_SHOP_NM
     , 'N' AS REGULAR_YN
     , 'N' AS OUTLET_YN
  FROM GC_CO_EVENT_INFO A
     , SR_COOPR_CO_M_S2K B
     , SR_CORCO_GNRL_X_S2K C
 WHERE A.CORCO_CD = B.CORCO_CD
   AND B.CORCO_CD = C.LIFNR1(+)
   AND B.CORCO_GB_CD = '10'
   AND A.REG_DTTM BETWEEN SYSDATE-1 AND SYSDATE 
UNION ALL
SELECT 'K083' AS CO_CD
     , A.BRND_CD
     , '30' AS DISTB_SHAP_CD
     , A.SHOP_SEQNO
     , '인더스트리FNC' AS CONM
     , (SELECT BRND_NM
          FROM MD_BRND_D_S2K
         WHERE BRND_CD = A.BRND_CD) AS BRND_NM
     , '백화점' AS DSTB_NM
     , B.CORCO_NM
     , A.REG_DTTM
     , '' AS INTRI_DAT
     , B.REGR_ID
     , B.COOPR_CO_REMN_NM
     , C.STCD1
     , C.MOB_NUMBER
     , B.CORCO_CD
     , C.TYPE_MANU
     , C.CATE_BUSINESS
     , C.TEL_NUMBER
     , C.CITY1
     , C.STREET
     , A.MOD_DTTM
     , SYSDATE AS MOD_DTTM
     , A.SHOP_SEQNO REP_SHOP_SEQ
     , '01' AS REP_SHOP_GRP
     , B.CORCO_NM AS REP_SHOP_NM
     , 'N' AS REGULAR_YN
     , 'N' AS OUTLET_YN
  FROM GC_CO_EVENT_INFO A
     , SR_COOPR_CO_M_S2K B
     , SR_CORCO_GNRL_X_S2K C
 WHERE A.CORCO_CD = B.CORCO_CD
   AND B.CORCO_CD = C.LIFNR1(+)
   AND B.CORCO_GB_CD = '10'
   AND A.REG_DTTM BETWEEN SYSDATE-1 AND SYSDATE 
   ;


--이후 전송여부 값 업데이트 처리 부탁드립니다. 
