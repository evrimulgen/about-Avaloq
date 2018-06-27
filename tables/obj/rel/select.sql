select /*+ parallel(16) */
  substr(obj_t.name, 1,  30)                  obj_1_type,
  substr(rel_t.name, 1,  18)                  relation_type,
  substr(rel_s.name, 1,  40)                  relation_sub_type,
  substr(obj_u.name, 1,  30)                  obj_2_type
from
  obj_rel               obj_r                                               join
  obj                   obj_1 on obj_r.obj_1_id            = obj_1.id       join
  obj                   obj_2 on obj_r.obj_2_id            = obj_2.id       join
  code_obj_type         obj_t on obj_1.obj_type_id         = obj_t.id       join
  code_obj_type         obj_u on obj_2.obj_type_id         = obj_u.id  left join
  code_obj_rel_type     rel_t on obj_r.obj_rel_type_id     = rel_t.id  left join
  code_obj_rel_sub_type rel_s on obj_r.obj_rel_sub_type_id = rel_s.id
where
  rel_t.id > 0 and
  rel_s.id > 0
group by
  obj_t.name,
  rel_t.name,
  rel_s.name,
  obj_u.name
order by
  count(*) desc
--
-- OBJ_1_TYPE                     RELATION_TYPE      RELATION_SUB_TYPE                        OBJ_2_TYPE
-- ------------------------------ ------------------ ---------------------------------------- ------------------------------
-- Asset                          asset specializati !asset specialization                    Asset
-- Asset                          trading places     trading place                            Market
-- Business partner               Document           Signer BP                                Document
-- Business partner               mailing            Mailing Business Partner                 Address
-- Position                       mailing            Mailing Money Account                    Address
-- Container                      mailing            Mailing Container                        Address
-- Business partner               role               has a Private Banker called              Business partner
-- Asset                          Document           Relation DOCM                            Document
-- Position                       Document           E-banking authority for                  Document
-- Person                         Document           has ID questions                         Document
-- Card                           Card Address       Mailing Address                          Address
-- Position                       Document           E-banking owning                         Document
-- Business partner               Document           E-Banking: linked to                     Document
-- Person                         Document           has KYC Documentation (UK)               Document
-- Person                         Document           E-Banking: Person owning the contract    Document
-- Container                      role               has a Portfolio Manager called           Business partner
-- Business partner               role               has a Client Director called             Business partner
-- Container                      Document           E-banking authority (portfolio) for      Document
-- Container                      Document           E-banking authority for                  Document
-- Asset                          asset component    !asset compo intr                        Asset
-- Asset                          asset component    !asset compo conv                        Asset
-- Card                           Document           E-Banking: card owned by                 Document
-- Person                         Document           has KYC Documentation                    Document
-- Container                      role               has a Personal Investment Manager called Business partner
-- Investment Policy Statement    mailing            Mailing Investment Policy Statement      Address
-- Person                         Document           Relation DOCM                            Document
-- Business partner               role               !has a Signatory Authority called        Business partner
-- Address                        Document           E-banking PO box of                      Document
-- Container                      Document           E-banking owning (portfolio)             Document
-- Container                      Document           E-banking owning                         Document
-- Asset                          role               has a 1st borrower called                Business partner
-- Business partner               Document           has KYC Documentation (Private Person, C Document
-- Business partner               role               has a Wealth Manager called              Business partner
-- Person                         Document           has KYC Documentation (Private Person, C Document
-- Business partner               Document           has Client Profile                       Document
-- Business partner               role               has a Credit Officer called              Business partner
-- Container                      role               Ledger container controlled by           Business partner
-- Position                       Document           Relation DOCM                            Document
-- Collection                     mailing            Mailing Collection                       Address
-- Container                      role               has an Independent Wealth Manager called Business partner
-- Asset                          role               has a 2nd borrower called                Business partner
-- Business partner               role               !has a Number Account Link to            Business partner
-- Person                         Document           has KYC Documentation (Private Person, A Document
-- Business partner               Document           has KYC Documentation (Private Person, A Document
-- Business partner               role               has a Connected Account to               Business partner
-- Business partner               role               has a TT&E Section called                Business partner
-- Container                      role               has a Backup Portfolio Manager called    Business partner
-- Investment Policy Statement    Document           eb: ips used by                          Document
-- Business partner               role               has a Booking Center Unit responsible ca Business partner
-- Container                      role               Ebanking - can be viewed by              Business partner
-- Business partner               role               has a Specialist called                  Business partner
-- Container                      role               has a Retro Beneficiary called           Business partner
-- Container                      role               has an Income Container called           Container
-- Business partner               role               has an Assistant called                  Business partner
-- Business partner               role               has a Team called                        Business partner
-- Business partner               role               has additional security access           Business partner
-- Business partner               role               has a former Private Banker called       Business partner
-- Container                      Document           Signer Cont                              Document
-- Container                      role               has a Business Introducer called         Business partner
-- Business partner               role               !has a Limited Power of Attorney called  Business partner
-- Balance account                role               Balance account controlled by            Business partner
-- Business partner               role               has a Reference WM called                Business partner
-- Container                      role               has an Advisory Manager called           Business partner
-- Business partner               role               has a 2nd Private Banker called          Business partner
-- Business partner               role               Ebanking - user->contract relation       Business partner
-- Business partner               Document           has RFI Questionnaire                    Document
-- Asset                          role               has a another borrower called            Business partner
-- Business partner               role               Ebanking - user team relation            Business partner
-- Person                         Document           CDD questionaire from                    Document
-- Business partner               role               has a Coutts Institute Advisor called    Business partner
-- Business partner               role               has a Financial Planner called           Business partner
-- Asset                          role               cross guarantee belongs to master pos    Asset
-- Collection                     role               CostCenter owner                         Business partner
-- Container                      role               has a information disclosure for         Business partner
-- Business partner               Sharing            is Branch of                             Business partner
-- Business partner               role               !has a Corporate Signatory Authority cal Business partner
-- Business partner               role               has an Account Responsible called        Business partner
-- Business partner               role               has an Offshore Private Banker called    Business partner
-- Asset                          role               Dirty/Unclean to Clean relation          Asset
-- Business partner               role               has a Trust Manager called               Business partner
-- Container                      role               has a Special Advisor called             Business partner
-- Business partner               role               has an Investment Consultant called      Business partner
-- Person                         Document           has KYC Documentation (Legal Entity, CH) Document
-- Person                         Document           has KYC Documentation (Legal Entity, Asi Document
-- Business partner               Document           has KYC Documentation (Legal Entity, CH) Document
-- Business partner               role               has a Strategic Solution Advisor called  Business partner
-- Document                       Document           Relation QUESTR/CONT                     Container
-- Business partner               Document           has KYC Documentation (Legal Entity, Asi Document
-- Business partner               role               !has a Trustee called                    Business partner
-- Business partner               Sharing            is a Subsidiary 100% called              Business partner
-- Container                      role               has an Investment Advisor called         Business partner
-- Business partner               role               !has a Settlor called                    Business partner
-- Business partner               role               has a OOH Assistant called               Business partner
-- Card                           Card Address       Billing Address                          Address
-- Balance account                role               Balance account owned by Executive Busin Business partner
-- Business partner               role               has a Pension Specialist called          Business partner
-- Business partner               role               has a Night Desk Assistant called        Business partner
-- Business partner               role               is same BP as (Child)                    Business partner
-- Balance account                role               Balance account reviewed by              Business partner
-- Container                      role               has a charity specialist called          Business partner
-- Balance account                role               Balance account contingency controlled b Business partner
-- Document                       Document           Relation QUESTR/CONT                     Business partner
-- Customer Accounting            mailing            Mailing CUA                              Address
-- Balance account                role               Balance account prepared by              Business partner
-- Model Portfolio                role               has linked MPF                           Model Portfolio
-- Model Portfolio                role               has linked AA                            Asset Allocation
-- Investment Policy Statement    role               has TAAF Version                         Model Portfolio
-- Business partner               role               has a Protection Adviser                 Business partner
-- Background process             prcq               prcq                                     Queue processor
-- Container                      role               has a Safe Signatory called              Business partner
-- Investment Policy Statement    role               is the Parent of                         Investment Policy Statement
-- Container                      role               has a TAS dealing access to              Business partner
-- Container                      role               has a direct FX dealing access to        Business partner
-- Position                       role               Money Account Manager                    Business partner
-- Business partner               role               has the direct dealing access to         Business partner
-- Business partner               role               has an Executive called                  Business partner
-- Business partner               role               has a Restructuring Manager called       Business partner
-- Business partner               role               !has a Protector called                  Business partner
-- Business partner               role               has a Wealth Planner (International) cal Business partner
-- Container                      role               has a Signatory Authority called         Business partner
-- Business partner               role               has a standard Broker called             Business partner
-- Container                      role               has an Ex-Custody Container called       Container
-- Business partner               role               has a Manager called                     Business partner
-- Business partner               Sharing            is a Subsidiary greater or equal 50% of  Business partner
-- Card                           Beneficiary        Beneficial Owner                         Person
-- Container                      role               has Asset Basket                         Asset
-- Business partner               role               has a Structured Lending Manager called  Business partner
-- Business partner               role               Ebanking - eam staff to eam relation     Business partner
-- Container                      role               Ebanking - can be managed by             Business partner
-- Business partner               role               has a PB Introducer called               Business partner
-- Card                           Card Address       !Mailing Address PIN                     Address
-- Person                         Document           E-Banking Login                          Document
-- Investment Policy Statement    Document           Relation DOCM                            Document
-- Business partner               Sharing            is a Subsidiary smaller than 50% called  Business partner
-- Container                      role               has a Beneficial Owner called            Business partner
-- Business partner               role               has an Estate Planner                    Business partner
-- Container                      role               has a FX 24x5 Trader called              Business partner
-- Business partner               role               has a Trust Specialist                   Business partner
-- Business partner               role               has a Specialist Credit Manager called   Business partner
-- Asset                          Document           Signer BP                                Document
-- Business partner               role               has an Investment Consulting Team called Business partner
-- Business partner               BP Country         Country of business activity             Country
-- Person                         Document           has a FX245 document assigned            Document
-- Container                      role               Balance account controlled by            Business partner
-- Container                      role               has a Special Advisory Manager called    Business partner
-- Business partner               role               has Private Office Advisor called        Business partner
-- Business partner               role               !has relationship manager                Business partner
-- Container                      role               has an Disclosure Instruction called     Business partner
-- Asset                          Loan Document      Loan Document                            Document
-- Asset                          trading places     trading place                            Queue processor
-- Container                      role               'Box Product Distribution' defined in co Collection
-- Business partner               role               has a Tax Manager called                 Business partner
-- Container                      role               has a Limited Power of Attorney called   Business partner
-- Card                           Card Address       !Bank Address                            Address
--
