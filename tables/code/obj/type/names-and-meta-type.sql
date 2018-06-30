select
   obt.name      object_type,
   obt.intl_id,
   obt.user_id,
   met.name      meta_type,
   obt.activ
from
   code_obj_type obt  left join
   meta_typ      met  on obt.meta_typ_id = met.id
order by
   obt.activ,
   obt.name;
--    
-- OBJECT_TYPE                              INTL_ID         USER_ID         META_TYPE                                ACTIV
-- ---------------------------------------- --------------- --------------- ---------------------------------------- -----
-- Account Switch                           accswit         ACCSWIT         Account Switching                        +    
-- Address                                  addr            ADDR            Address                                  +    
-- Application                              app             APP                                                      +    
-- Asset                                    asset           ASSET           Asset                                    +    
-- Asset Allocation                         aa              AA              Asset Allocation                         +    
-- Asset Flow                               asset_flow      ASSET_FLOW                                               +    
-- Background process                       bgp             BGP                                                      +    
-- Balance account                          balacc          BALACC                                                   +    
-- Balance structure                        balstru         BALSTRU                                                  +    
-- Benchmark                                bmrk            BMRK            Benchmark                                +    
-- Business partner                         bp              BP              Business Partner                         +    
-- Calendar                                 caldr           CALDR           Calendar                                 +    
-- Card                                     card            CARD            Card                                     +    
-- Cash Counterparty                        cash_cntprty    CASH_CNTPRTY                                             +    
-- Cheque                                   chq             CHQ                                                      +    
-- Cheque Book Profile                      chqbkprf        CHQBKPRF        Cheque book profile                      +    
-- Collection                               collect         COLLECT         Collection                               +    
-- Competence Level Profile                 competp         COMPETP         Competence Level Profile                 +    
-- Constraint                               constr          CONSTR          Constraint                               +    
-- Container                                cont            CONT            Container                                +    
-- Cost Accounting                          coa             COA             Cost Accounting                          +    
-- Cost Profile                             costp           COSTP           Cost Profile                             +    
-- Counterparty                             cntprty         CNTPRTY         Counterparty                             +    
-- Country                                  country         COUNTRY         Country                                  +    
-- Coupon                                   cpn             CPN                                                      +    
-- Customer Accounting                      cua             CUA             Customer Accounting                      +    
-- Direct Debit                             dd              DD              Direct Debit                             +    
-- Document                                 docm            DOCM            Document                                 +    
-- Efficient Frontier                       efron           EFRON           Efficient Frontier                       +    
-- Fee Profile                              feep            FEEP            Fee Profile                              +    
-- Financing                                collat          COLLAT          Pledge Definition                        +    
-- Hedge                                    hdg             HDG             Hedge Accounting                         +    
-- Hierarchic Object Breakdown Scheme       hobs            HOBS                                                     +    
-- Hierarchical Limit                       lihi_limit      LIHI_LIMIT                                               +    
-- Index                                    idx             IDX             Index                                    +    
-- Intermediary                             imed            IMED            Intermediary                             +    
-- Investment Policy Statement              ips             IPS             Investment Policy Statement              +    
-- Limit Hierarchy                          lihi            LIHI            Limit Hierarchy                          +    
-- Market                                   mkt             MKT             Market                                   +    
-- Market data object                       md              MD              Market Data Object                       +    
-- Message                                  msg             MSG                                                      +    
-- Model Portfolio                          mpf             MPF             Model Portfolio                          +    
-- Order                                    doc             DOC                                                      +    
-- Person                                   person          PERSON          Person                                   +    
-- Position                                 pos             POS             Money Account                            +    
-- Printer                                  printer         PRINTER                                                  +    
-- Product                                  prod            PROD            Product                                  +    
-- Queue processor                          prcq            PRCQ                                                     +    
-- Report datamart                          task_dtm        TASK_DTM                                                 +    
-- Restriction                              restr           RESTR           Restriction                              +    
-- Restriction Link                         restr_link      RESTR_LINK                                               +    
-- Retrocession Fee Contract                feecr           FEECR           Retrocession Fee Contract                +    
-- SLB Agreement                            slba            SLBA            SLB Agreement                            +    
-- Safe Deposit Box Contract                sdbc            SDBC            Safe Deposit Box Contract                +    
-- Sales Opportunity                        salesopp        SALESOPP        Sales Opportunity                        +    
-- Sentinel                                 sent            SENT                                                     +    
-- Simulation                               sim             SIM             Simulation                               +    
-- Source                                   src             SRC                                                      +    
-- Stream                                   stream          STREAM                                                   +    
-- Stress Scenario                          stresc          STRESC          Stress Scenario                          +    
-- Structured Mailing Product               smp             SMP             Structured Mailing Product               +    
-- Syndicate                                synd            SYND            Syndicate                                +    
-- Task definition                          task_def        TASK_DEF                                                 +    
-- Task layout                              task_layout     TASK_LAYOUT                                              +    
-- Task template                            task_templ      TASK_TEMPL                                               +    
-- Terminal                                 terminal        TERMINAL        Terminal                                 +    
-- Third-Party Authorisation                thp_auth        THP_AUTH        Third-Party Authorisation                +    
-- Trailer Fee Contract                     feect           FEECT           Trailer Fee Contract                     +    
-- User                                     user            USER                                                     +    
-- !Aggregation figure                      afig            AFIG                                                          
-- !Aggregation node                        anode           ANODE                                                         
-- !Asset instance                          ai              AI                                                            
-- !Balance                                 bal             BAL                                                           
-- !Limit                                   limit           LIMIT                                                         
-- !Procedure                               proc            PROC                         
