class InitializeData < ActiveRecord::Migration[5.0]
  def change
    Role.create!([
      {id: 1, name: "admin", resource_type: nil, resource_id: nil, created_at: "2017-04-01 20:02:38", updated_at: "2017-04-01 20:02:38"},
      {id: 2, name: "player", resource_type: nil, resource_id: nil, created_at: "2017-04-01 20:22:01", updated_at: "2017-04-01 20:22:01"}
    ])
    Company.create!([
      {id: 1, name: "TRSB", email_mask: "[a-z]@trsb.net$", created_at: "2017-03-19 20:23:10", updated_at: "2017-03-19 20:23:10"},
      {id: 2, name: "Sopra", email_mask: "", created_at: "2017-03-30 11:29:25", updated_at: "2017-03-30 11:29:25"},
      {id: 3, name: "Veolia", email_mask: "", created_at: "2017-03-30 11:39:31", updated_at: "2017-03-30 11:39:31"}
    ])
    Team.create!([
      {id: 1, name: "Trsb#1", company_id: 1, created_at: "2017-03-19 20:49:58", updated_at: "2017-03-19 20:49:58"},
      {id: 2, name: "TRSB#2", company_id: 1, created_at: "2017-03-19 20:50:19", updated_at: "2017-03-19 20:50:19"},
      {id: 3, name: "Team#1", company_id: nil, created_at: "2017-03-30 11:12:31", updated_at: "2017-03-30 11:12:31"},
      {id: 4, name: "Team#2", company_id: nil, created_at: "2017-03-30 11:12:43", updated_at: "2017-03-30 11:12:43"},
      {id: 5, name: "Orange", company_id: nil, created_at: "2017-03-30 21:27:29", updated_at: "2017-03-30 21:27:42"},
      {id: 6, name: "Jaune", company_id: nil, created_at: "2017-03-30 21:28:02", updated_at: "2017-03-30 21:28:02"}
    ])

    user = User.new({id: 1, email: "guillaume.crochemore@gmail.com", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$.RB/xnqEJnS1GE2GAhKDj.HbSzMJ7hJlZNGInyXDvzgtwkGON.Stq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-03-28 18:26:46", last_sign_in_at: "2017-03-28 18:18:11", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "C", company_id: 1, created_at: "2017-03-19 18:30:13", updated_at: "2017-03-28 18:26:46"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 2, email: "mederic@mederic.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$BHWnBiV.X7PT8v2VwJo2T.xlUEgc.SVyLz6s1YqKR2NzcVGRq26US", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "3X1WPAY3s9iYGoz-mx5s", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:16:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mederic", last_name: "D", company_id: 1, created_at: "2017-03-28 18:16:33", updated_at: "2017-03-28 18:16:33"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 3, email: "gwenj@gwenj.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$qb/ZpeDN3EaLbncjHbFyzebrJcBZNKydsxt03amDhF.tFTz1fdEHm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "xB5rumuzr4me-pUGa1Hs", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:46:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gwennael", last_name: "J", company_id: 1, created_at: "2017-03-28 18:46:41", updated_at: "2017-03-28 18:46:41"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 4, email: "souleymane@souleymane.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$rxNP./jJQ3Xtfp0kj1dEfufj9zSbixC/IhTbLFlmQAqCm6OBK12dq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L8soofxkhpXzmXiVjMSq", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:47:39", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Souleymane", last_name: "N", company_id: 1, created_at: "2017-03-28 18:47:39", updated_at: "2017-03-28 18:47:39"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 5, email: "guillaumes@guillaumes.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$DtG4Uga76KgDEcN0SxsFd.JW/mJmwnj/951fmhzKfYcFSqC2EnVVi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "m_qto1WHUpdEey8SFX-y", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:53:30", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "S", company_id: 1, created_at: "2017-03-28 18:53:30", updated_at: "2017-03-28 18:53:30"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 6, email: "francois@francois.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Nc0W5856pGlJgOitDsrYzeCxQ3bOi9EroDVNkPnrK1dNKpsJBrFdq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "3JZh3useeNssxUyKiixb", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:54:19", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Francois", last_name: "L", company_id: 1, created_at: "2017-03-28 18:54:19", updated_at: "2017-03-28 18:54:19"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 7, email: "etienne@dutet.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$NchIz1w1.hjyTMuVE3.sEui40CTK38WjIfqiRh0UnIEexPLfxT8By", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "jKx7RcKNnHa2EXTNKk4D", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:46:33", unconfirmed_email: "etienned@etienned.fr", failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Etienne", last_name: "D", company_id: 1, created_at: "2017-03-28 18:54:47", updated_at: "2017-03-30 11:46:33"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 8, email: "robin@robin.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$oHVLnON86Xvybmo.UB5GCOUP4xLpihrXsr56/ed1BcZifPNTA2J3a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "dnHBzMBdzBxztfwq2T9r", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:56:14", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Robin", last_name: "D", company_id: 1, created_at: "2017-03-28 18:56:14", updated_at: "2017-03-28 18:56:14"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 9, email: "clementj@clementj.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$7cxKV6oDrp7gsXs.0x6csuFIy5NifWRLruaZxNqE9RFA6cBwILjpe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "oC3sxtXimtAXzauJ6zRB", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:56:51", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Clement", last_name: "J", company_id: 1, created_at: "2017-03-28 18:56:51", updated_at: "2017-03-28 18:56:51"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 10, email: "luis@luis.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$h4S28RAUYuWtl.kc5I45YeZ1Y/UiiL8iAKYGJv.yN31BqlrV/8aKS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "TisRoFc3ueoSoFsVFJsC", confirmed_at: nil, confirmation_sent_at: "2017-03-28 19:58:32", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Luis", last_name: "P", company_id: 1, created_at: "2017-03-28 19:58:32", updated_at: "2017-03-28 19:58:32"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 11, email: "arthurl@larthurl.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$d20peo0BHeXoEp0H1uz1z.Yp7s28AqODJLacmtiXOziaswX7T40B2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "xSRmptycyfwph7iRfNRz", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:37:23", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arthur", last_name: "L", company_id: 2, created_at: "2017-03-30 11:37:23", updated_at: "2017-03-30 11:37:23"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 12, email: "etienne@etienne.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$uKnw5Y9RLiXssCO7WexSv.3.jcZZzm43OU90/jJp2wOPdE0R4BuVq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "NBxrAKQms5zTSzbtALxp", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:37:49", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Etienne", last_name: "B", company_id: nil, created_at: "2017-03-30 11:37:49", updated_at: "2017-03-30 11:37:49"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 13, email: "jf@jf.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$d0jfmpI6LnThdTZZkGdqNOyC6/GaHJinN.UwatzRCDkUlZ.j0Rv0e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "UwLLgEaaQJfexG5Gv87z", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:38:16", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jean-Francois", last_name: "D", company_id: nil, created_at: "2017-03-30 11:38:16", updated_at: "2017-03-30 11:38:16"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 14, email: "alex@alex.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$w7vVajfbU9Jk3NflfyPN9ORpQcjskohYRRfZ2qt.p/DZOHYPQU5vu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "rNS5Xd-ueZToZuxabiys", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:38:40", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alexandre", last_name: "L", company_id: nil, created_at: "2017-03-30 11:38:40", updated_at: "2017-03-30 11:38:40"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 15, email: "romain@romain.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$CpKEpTji9xewt7h5ycs6q.cLb/DjmtNxULbiPQ/Cx72zIMy/Pqb0S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "cwgqqvn4s8D2pqbKds9x", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:40:18", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romain", last_name: "L", company_id: 3, created_at: "2017-03-30 11:40:18", updated_at: "2017-03-30 11:40:18"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 16, email: "quentin@quentin.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$j/bVnEbM6kf7.k25HdqlUeicWS9.xfR7.drZcub2Sy.MTB7sl13jS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "9xzj7NQ57B18qRZx5DEn", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:41:03", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Quentin", last_name: "L", company_id: nil, created_at: "2017-03-30 11:41:03", updated_at: "2017-03-30 11:41:03"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 17, email: "thomasl@thomasl.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$NqCyNvPyhOqiMP38R/X5aeKUqUs6/SpGNaU00dr3T8sXJ999p62uy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "RDay1Hswy6p4xhTUjfQ4", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:42:46", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "L", company_id: nil, created_at: "2017-03-30 11:42:46", updated_at: "2017-03-30 11:42:46"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 18, email: "thomas@thomas.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$njsqgpSsic71IwtDjgzSOOd4/lo3hZ3q1.TiJCpmoADEIVyWWPVQW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "ZL4x5GXyw_ANvxy8nfbL", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:43:11", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "G", company_id: nil, created_at: "2017-03-30 11:43:11", updated_at: "2017-03-30 11:43:11"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 19, email: "vincent@vincent.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Nupn35Hp06Fa362xKcU6Ke4ygG.QMU6sDPkA4.uOYY0R6F.VjQB7m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "Muv-5rP-Jpys_XMgbYnM", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:44:56", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "G", company_id: nil, created_at: "2017-03-30 11:44:56", updated_at: "2017-03-30 11:44:56"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 20, email: "jeremi@jeremi.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXeTq7QBc1w_-xp5Axg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jeremi", last_name: "N", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 21, email: "thomass@thomass.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$agnDAYp2jTk4tVAT7x8Ie.o5fsfiR9.Sg2kMZKWID2h3VXZK8WcLe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "mgF5zuEPACGyyi_CJYyz", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:04", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "S", company_id: nil, created_at: "2017-03-30 21:26:04", updated_at: "2017-03-30 21:26:04"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 22, email: "paull@paull.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yD1mtyCHcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "L", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 23, email: "simonl@simonl.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$AQrSHo6O1XUu.gk3FLamteGrKmLuBV8Fn3GLilyRYqUpVMRCCSB9e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "fK49QgTdgP_S21mJCTTx", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:32:08", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Simon", last_name: "L", company_id: nil, created_at: "2017-03-30 21:32:08", updated_at: "2017-03-30 21:32:08"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 24, email: "sebo@sebo.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lY40YwgIsFiWHStGUURCHuocT/tAg432.Jje50g4HxAdLUMGpkTry", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdY36q1ZKdTZqstNqfz1", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:32:36", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Seb", last_name: "O", company_id: nil, created_at: "2017-03-30 21:32:36", updated_at: "2017-03-30 21:32:36"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 25, email: "charlesc@charlesc.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$qLw8LmaZ3XKd6VatOYv9CeQixurbqEllbGviSbOjDzeaA688P5E0.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "zEjE1LtjsdP4MSXpikGP", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:33:25", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Charles", last_name: "C", company_id: nil, created_at: "2017-03-30 21:33:25", updated_at: "2017-03-30 21:33:25"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 26, email: "cyrilm@cyrilm.foot", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$LqtNt./9yxm4/OifHuxebup3B43JnECfqdUzT51E5p/.MqpCqGZ1K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "kbxdqrynH99S9EaCsuuG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:34:12", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Cyril", last_name: "M", company_id: nil, created_at: "2017-03-30 21:34:12", updated_at: "2017-03-30 21:34:12"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 27, email: "vincentli@vincentli.foot", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$9uxhcAwAuz7PoXKPSJEpceyeOW2nmUYMc1eZg9g.tF9cCAlKHZO1W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "vUmSz-pWtwS9F6heZdN7", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:34:48", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "Li", company_id: nil, created_at: "2017-03-30 21:34:48", updated_at: "2017-03-30 21:34:48"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 28, email: "remy@remy.foot", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GnvzYsC/fSAc9iwsAPryrOBs34QbOQylJC4zVjFwD.rhNMmm2nvs.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "XyQinAhmn4YEQDZGAQ_i", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:35:46", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Remy", last_name: "", company_id: nil, created_at: "2017-03-30 21:35:46", updated_at: "2017-03-30 21:35:46"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 29, email: "antoinel@antoinel.foot", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$WCQjMrJ12aVxXzbdXlkDle7b2eaaNqIJXA1UzVEVGR527HG5RRMCm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "2nXLmnuDKzinzthG51q6", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:37:23", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Antoine", last_name: "L", company_id: nil, created_at: "2017-03-30 21:37:23", updated_at: "2017-03-30 21:37:23"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 30, email: "paulj@paulj.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$8qS1apY.SAodx7uFNnY3jegLCiepyA7HpgNKmKsXBdFy2LaXqekEu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "b1EgYfJFRMk9MMyrPABf", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:41:19", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "J", company_id: nil, created_at: "2017-04-01 20:41:19", updated_at: "2017-04-01 20:41:19"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 31, email: "julienl@julienl.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GzJfN68J3/l6ULxC.LmpfuU1FuhxZrlg3wgI6FlXHiqDTzcOwVv3q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "-4536ZXDuZXyXrr3w-1m", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:52:02", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Julien", last_name: "L", company_id: nil, created_at: "2017-04-01 20:52:02", updated_at: "2017-04-01 20:52:02"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 32, email: "guillaumebe@guillaumebe.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GRdVVS.6Bs9cZQr6.bL0a.0r/EW7mZdwgnI4pRca1k7GL984kpBwm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "_U_155xkiu56-RDAtzod", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:52:32", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Be", company_id: nil, created_at: "2017-04-01 20:52:32", updated_at: "2017-04-01 20:52:32"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 33, email: "arthurd@arthurd.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$4LWPu7ZXmFkpopkfGHrJ2.TQIsthvRxWAyzPFep422SWRGxbTBrrm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "KYQoGCkuUNYmxe9Sfnn_", confirmed_at: nil, confirmation_sent_at: "2017-04-01 21:35:47", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arthur", last_name: "D", company_id: nil, created_at: "2017-04-01 21:35:47", updated_at: "2017-04-01 21:35:47"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 34, email: "gabinb@gabinb.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$zm24mQtp3CdfY9NrH2lj5e1Zw1YmUnAh3oDHuuHJmHmPvBBAh1BOi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "Je1RQNxjHkr5oEjBiMwd", confirmed_at: nil, confirmation_sent_at: "2017-04-10 11:10:25", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gabin", last_name: "G", company_id: nil, created_at: "2017-04-10 11:10:25", updated_at: "2017-04-10 11:10:25"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 35, email: "vincentla@vincentla.fr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$oMYvlsVLQ6iOzfebjkCh2uM19uOdcSp/XW8bZuU6RJzSNwMQNgbQK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "MFmfzi2Yf_GxWyf7CZrY", confirmed_at: nil, confirmation_sent_at: "2017-04-10 11:26:31", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "La", company_id: nil, created_at: "2017-04-10 11:26:31", updated_at: "2017-04-10 11:26:31"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 36, email: "mathieum@mathieum", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$CEOEhACMHcg7qaZ5Ll7JrOvZQ1Xxj5IZjRwr4ooTv8ReAnPZIAoTu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LCsGMurr4z6Nwkk7SSFu", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:01:28", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mathieu", last_name: "M", company_id: nil, created_at: "2017-04-10 19:01:28", updated_at: "2017-04-10 19:01:28"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 37, email: "pablop@pablop", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Kh0J3iv2cyDod8t4OKWeg.OpFkxfXtknSYGiGHUvj.qHAlbZYoXk.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "hcFNne-qUzcBdLTp8NrE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:01:58", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Pablo", last_name: "P", company_id: nil, created_at: "2017-04-10 19:01:58", updated_at: "2017-04-10 19:01:58"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 38, email: "manue@manue", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UDH73mxUA5n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Emmanuel", last_name: "E", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 39, email: "maximeb@maximeb", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Kh0J3iv2cyDod8t4OKWeg.OpFkxfXtknSYGiGHUvj.qHAlbZYoXk.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "hcFNne-qUzcBdLTp9NrE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:01:58", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Maxime", last_name: "B", company_id: nil, created_at: "2017-04-10 19:01:58", updated_at: "2017-04-10 19:01:58"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 40, email: "geoffrayg@geoffrayg", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UDH73mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Geoffray", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 41, email: "aureliens@aureliens", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgxdDH73mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Aurelien", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 42, email: "alainh@alainh", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreD3mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alain", last_name: "A", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 43, email: "julienr@julienr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4U73azmxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Julien", last_name: "R", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    FutsalField.create!([
      {id: 1, name: "Soccer Park - Rouen", latitude: nil, longitude: nil, created_at: "2017-03-30 11:13:14", updated_at: "2017-03-30 11:13:24"},
      {id: 2, name: "Foot 2 rue - Dieppe", latitude: nil, longitude: nil, created_at: "2017-03-30 21:23:22", updated_at: "2017-03-30 21:23:22"}
    ])
    FutsalGame.create!([
      {id: 1, date: "2017-03-27 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 23, score_outside: 20, video_link: "https://www.youtube.com/embed/KEUrilaoguw", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1617698&matchs_id=105768", created_at: "2017-03-19 21:18:46", updated_at: "2017-03-30 11:43:58"},
      {id: 2, date: "2017-03-26 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 16, score_outside: 29, video_link: "https://www.youtube.com/embed/HWlxQXRgKEM", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1616413&matchs_id=105680", created_at: "2017-03-30 11:17:46", updated_at: "2017-04-03 20:01:54"},
      {id: 3, date: "2017-03-30 20:00:00", duration: 60, futsal_field_id: 2, team_home_id: 5, team_outside_id: 6, score_home: 0, score_outside: 17, video_link: "", match_resume_link: "", created_at: "2017-03-30 21:28:40", updated_at: "2017-03-30 21:28:40"},
      {id: 4, date: "2017-04-02 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 16, score_outside: 19, video_link: "https://www.youtube.com/embed/BoznYM0PPDA", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1644328&matchs_id=107541", created_at: "2017-04-01 20:33:12", updated_at: "2017-04-04 15:25:10"},
      {id: 5, date: "2017-04-03 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 18, score_outside: 20, video_link: "", match_resume_link: "", created_at: "2017-04-01 20:34:22", updated_at: "2017-04-03 19:30:52"},
      {id: 6, date: "2017-04-09 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 21, score_outside: 19, video_link: "https://www.youtube.com/embed/2rJQdS5CANI", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1672038&matchs_id=109150", created_at: "2017-04-10 10:50:51", updated_at: "2017-04-10 19:58:56"},
      {id: 7, date: "2017-04-10 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 21, score_outside: 21, video_link: "https://www.youtube.com/embed/yu7_ldHLb1I", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1673238&matchs_id=109259", created_at: "2017-04-10 19:00:24", updated_at: "2017-04-11 07:29:47"},
      {id: 8, date: "2017-04-17 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 24, score_outside: 14, video_link: "https://www.youtube.com/embed/Pp6cAXjJkJ4", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1700260&matchs_id=110880", created_at: "2017-04-17 20:07:47", updated_at: "2017-04-18 09:59:35"},
      {id: 9, date: "2017-04-18 18:30:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: nil, score_outside: nil, video_link: "", match_resume_link: "", created_at: "2017-04-18 08:22:20", updated_at: "2017-04-18 08:22:20"}
    ])
    GameRegistration.create!([
      {id: 1, user_id: 1, futsal_game_id: 1, team_id: 2, created_at: "2017-03-29 21:52:50", updated_at: "2017-03-29 21:55:18"},
      {id: 2, user_id: 2, futsal_game_id: 1, team_id: 1, created_at: "2017-03-29 21:57:24", updated_at: "2017-03-29 21:57:24"},
      {id: 3, user_id: 3, futsal_game_id: 1, team_id: 2, created_at: "2017-03-29 21:57:44", updated_at: "2017-03-29 21:57:44"},
      {id: 4, user_id: 4, futsal_game_id: 1, team_id: 2, created_at: "2017-03-29 21:57:55", updated_at: "2017-03-29 21:57:55"},
      {id: 5, user_id: 5, futsal_game_id: 1, team_id: 1, created_at: "2017-03-29 21:58:09", updated_at: "2017-03-29 21:58:09"},
      {id: 6, user_id: 6, futsal_game_id: 1, team_id: 1, created_at: "2017-03-29 21:58:20", updated_at: "2017-03-29 21:58:20"},
      {id: 7, user_id: 7, futsal_game_id: 1, team_id: 2, created_at: "2017-03-29 21:59:06", updated_at: "2017-03-29 21:59:06"},
      {id: 8, user_id: 8, futsal_game_id: 1, team_id: 2, created_at: "2017-03-29 21:59:22", updated_at: "2017-03-29 21:59:22"},
      {id: 9, user_id: 9, futsal_game_id: 1, team_id: 1, created_at: "2017-03-29 21:59:33", updated_at: "2017-03-29 21:59:33"},
      {id: 10, user_id: 10, futsal_game_id: 1, team_id: 1, created_at: "2017-03-29 21:59:56", updated_at: "2017-03-29 21:59:56"},
      {id: 11, user_id: 1, futsal_game_id: 2, team_id: 3, created_at: "2017-03-30 11:22:49", updated_at: "2017-03-30 11:22:49"},
      {id: 12, user_id: 12, futsal_game_id: 2, team_id: 4, created_at: "2017-03-30 11:56:52", updated_at: "2017-03-30 11:56:52"},
      {id: 13, user_id: 20, futsal_game_id: 2, team_id: 3, created_at: "2017-03-30 11:57:23", updated_at: "2017-03-30 11:57:23"},
      {id: 14, user_id: 13, futsal_game_id: 2, team_id: 3, created_at: "2017-03-30 11:57:35", updated_at: "2017-03-30 11:57:35"},
      {id: 15, user_id: 19, futsal_game_id: 2, team_id: 3, created_at: "2017-03-30 21:24:58", updated_at: "2017-03-30 21:24:58"},
      {id: 16, user_id: 17, futsal_game_id: 2, team_id: 3, created_at: "2017-03-30 21:25:34", updated_at: "2017-03-30 21:25:34"},
      {id: 17, user_id: 21, futsal_game_id: 3, team_id: 5, created_at: "2017-03-30 21:29:10", updated_at: "2017-03-30 21:29:10"},
      {id: 18, user_id: 1, futsal_game_id: 3, team_id: 5, created_at: "2017-03-30 21:29:30", updated_at: "2017-03-30 21:29:30"},
      {id: 19, user_id: 22, futsal_game_id: 3, team_id: 5, created_at: "2017-03-30 21:29:47", updated_at: "2017-03-30 21:29:47"},
      {id: 20, user_id: 23, futsal_game_id: 3, team_id: 5, created_at: "2017-03-30 21:36:51", updated_at: "2017-03-30 21:36:51"},
      {id: 21, user_id: 29, futsal_game_id: 3, team_id: 5, created_at: "2017-03-30 21:37:59", updated_at: "2017-03-30 21:37:59"},
      {id: 22, user_id: 24, futsal_game_id: 3, team_id: 5, created_at: "2017-03-30 21:38:27", updated_at: "2017-03-30 21:38:27"},
      {id: 23, user_id: 25, futsal_game_id: 3, team_id: 6, created_at: "2017-03-30 21:38:51", updated_at: "2017-03-30 21:38:51"},
      {id: 24, user_id: 28, futsal_game_id: 3, team_id: 6, created_at: "2017-03-30 21:39:05", updated_at: "2017-03-30 21:39:05"},
      {id: 25, user_id: 26, futsal_game_id: 3, team_id: 6, created_at: "2017-03-30 21:39:24", updated_at: "2017-03-30 21:39:24"},
      {id: 26, user_id: 27, futsal_game_id: 3, team_id: 6, created_at: "2017-04-01 20:38:21", updated_at: "2017-04-01 20:38:21"},
      {id: 27, user_id: 30, futsal_game_id: 3, team_id: 6, created_at: "2017-04-01 20:41:41", updated_at: "2017-04-01 20:41:41"},
      {id: 28, user_id: 11, futsal_game_id: 4, team_id: 4, created_at: "2017-04-01 20:44:01", updated_at: "2017-04-04 10:59:50"},
      {id: 29, user_id: 12, futsal_game_id: 4, team_id: 4, created_at: "2017-04-01 20:44:13", updated_at: "2017-04-04 11:02:59"},
      {id: 30, user_id: 15, futsal_game_id: 4, team_id: 3, created_at: "2017-04-01 20:44:32", updated_at: "2017-04-04 11:00:42"},
      {id: 31, user_id: 19, futsal_game_id: 4, team_id: 4, created_at: "2017-04-01 20:44:49", updated_at: "2017-04-04 11:03:03"},
      {id: 32, user_id: 16, futsal_game_id: 4, team_id: 3, created_at: "2017-04-01 20:45:08", updated_at: "2017-04-04 11:01:50"},
      {id: 33, user_id: 18, futsal_game_id: 4, team_id: 4, created_at: "2017-04-01 20:51:00", updated_at: "2017-04-04 11:04:04"},
      {id: 34, user_id: 1, futsal_game_id: 4, team_id: 3, created_at: "2017-04-01 20:51:19", updated_at: "2017-04-04 11:01:36"},
      {id: 35, user_id: 31, futsal_game_id: 4, team_id: 3, created_at: "2017-04-01 20:52:52", updated_at: "2017-04-04 11:01:45"},
      {id: 36, user_id: 32, futsal_game_id: 4, team_id: 4, created_at: "2017-04-01 20:53:05", updated_at: "2017-04-04 11:03:07"},
      {id: 37, user_id: 1, futsal_game_id: 5, team_id: 1, created_at: "2017-04-01 21:36:24", updated_at: "2017-04-04 16:09:28"},
      {id: 38, user_id: 7, futsal_game_id: 5, team_id: 1, created_at: "2017-04-01 21:36:38", updated_at: "2017-04-04 16:09:31"},
      {id: 39, user_id: 4, futsal_game_id: 5, team_id: 2, created_at: "2017-04-01 21:36:54", updated_at: "2017-04-04 16:10:24"},
      {id: 40, user_id: 33, futsal_game_id: 5, team_id: 2, created_at: "2017-04-01 21:37:29", updated_at: "2017-04-04 16:09:38"},
      {id: 41, user_id: 8, futsal_game_id: 5, team_id: 2, created_at: "2017-04-01 21:37:48", updated_at: "2017-04-04 16:09:40"},
      {id: 42, user_id: 9, futsal_game_id: 5, team_id: 1, created_at: "2017-04-01 21:37:58", updated_at: "2017-04-04 16:09:42"},
      {id: 43, user_id: 3, futsal_game_id: 5, team_id: 1, created_at: "2017-04-01 21:38:17", updated_at: "2017-04-04 16:09:44"},
      {id: 44, user_id: 5, futsal_game_id: 5, team_id: 1, created_at: "2017-04-01 21:38:27", updated_at: "2017-04-04 16:10:02"},
      {id: 45, user_id: 14, futsal_game_id: 2, team_id: 4, created_at: "2017-04-01 21:58:29", updated_at: "2017-04-01 21:58:29"},
      {id: 46, user_id: 11, futsal_game_id: 2, team_id: 4, created_at: "2017-04-01 21:58:46", updated_at: "2017-04-01 21:58:46"},
      {id: 47, user_id: 15, futsal_game_id: 2, team_id: 4, created_at: "2017-04-01 21:59:41", updated_at: "2017-04-01 21:59:41"},
      {id: 48, user_id: 16, futsal_game_id: 2, team_id: 4, created_at: "2017-04-01 22:00:06", updated_at: "2017-04-01 22:00:06"},
      {id: 49, user_id: 4, futsal_game_id: 4, team_id: 3, created_at: "2017-04-04 11:04:30", updated_at: "2017-04-04 11:04:30"},
      {id: 50, user_id: 1, futsal_game_id: 6, team_id: 3, created_at: "2017-04-10 11:24:22", updated_at: "2017-04-10 11:27:34"},
      {id: 51, user_id: 31, futsal_game_id: 6, team_id: 3, created_at: "2017-04-10 11:24:34", updated_at: "2017-04-10 11:27:37"},
      {id: 52, user_id: 12, futsal_game_id: 6, team_id: 3, created_at: "2017-04-10 11:24:46", updated_at: "2017-04-10 11:27:40"},
      {id: 53, user_id: 32, futsal_game_id: 6, team_id: 4, created_at: "2017-04-10 11:25:00", updated_at: "2017-04-10 11:27:42"},
      {id: 54, user_id: 16, futsal_game_id: 6, team_id: 4, created_at: "2017-04-10 11:25:13", updated_at: "2017-04-10 11:27:47"},
      {id: 55, user_id: 34, futsal_game_id: 6, team_id: 3, created_at: "2017-04-10 11:25:33", updated_at: "2017-04-10 11:27:49"},
      {id: 56, user_id: 4, futsal_game_id: 6, team_id: 3, created_at: "2017-04-10 11:27:01", updated_at: "2017-04-10 11:27:58"},
      {id: 57, user_id: 35, futsal_game_id: 6, team_id: 4, created_at: "2017-04-10 11:27:18", updated_at: "2017-04-10 11:28:04"},
      {id: 58, user_id: 19, futsal_game_id: 6, team_id: 4, created_at: "2017-04-10 11:28:19", updated_at: "2017-04-10 11:28:19"},
      {id: 59, user_id: 15, futsal_game_id: 6, team_id: 4, created_at: "2017-04-10 11:28:36", updated_at: "2017-04-10 11:28:36"},
      {id: 60, user_id: 33, futsal_game_id: 7, team_id: 1, created_at: "2017-04-10 19:02:38", updated_at: "2017-04-10 19:06:12"},
      {id: 61, user_id: 9, futsal_game_id: 7, team_id: 1, created_at: "2017-04-10 19:02:48", updated_at: "2017-04-10 19:06:14"},
      {id: 62, user_id: 7, futsal_game_id: 7, team_id: 2, created_at: "2017-04-10 19:03:03", updated_at: "2017-04-10 19:06:16"},
      {id: 63, user_id: 1, futsal_game_id: 7, team_id: 2, created_at: "2017-04-10 19:03:21", updated_at: "2017-04-10 19:06:18"},
      {id: 64, user_id: 3, futsal_game_id: 7, team_id: 2, created_at: "2017-04-10 19:03:31", updated_at: "2017-04-10 19:06:20"},
      {id: 65, user_id: 38, futsal_game_id: 7, team_id: 2, created_at: "2017-04-10 19:04:11", updated_at: "2017-04-10 19:06:22"},
      {id: 66, user_id: 36, futsal_game_id: 7, team_id: 2, created_at: "2017-04-10 19:04:25", updated_at: "2017-04-10 19:06:23"},
      {id: 67, user_id: 2, futsal_game_id: 7, team_id: 1, created_at: "2017-04-10 19:04:37", updated_at: "2017-04-10 19:06:25"},
      {id: 68, user_id: 37, futsal_game_id: 5, team_id: 2, created_at: "2017-04-10 19:04:57", updated_at: "2017-04-10 19:06:46"},
      {id: 69, user_id: 36, futsal_game_id: 5, team_id: 2, created_at: "2017-04-10 19:05:19", updated_at: "2017-04-10 19:06:48"},
      {id: 70, user_id: 8, futsal_game_id: 7, team_id: 1, created_at: "2017-04-10 19:05:50", updated_at: "2017-04-10 19:06:27"},
      {id: 71, user_id: 4, futsal_game_id: 7, team_id: 1, created_at: "2017-04-10 19:06:01", updated_at: "2017-04-10 19:06:09"},
      {id: 72, user_id: 1, futsal_game_id: 8, team_id: 3, goal: 0, assist: 0, created_at: "2017-04-18 09:37:04", updated_at: "2017-04-18 09:38:25"},
      {id: 73, user_id: 4, futsal_game_id: 8, team_id: 3, goal: 0, assist: 0, created_at: "2017-04-18 09:38:15", updated_at: "2017-04-18 09:38:31"},
      {id: 74, user_id: 32, futsal_game_id: 8, team_id: 3, goal: 0, assist: 0, created_at: "2017-04-18 09:38:15", updated_at: "2017-04-18 09:38:35"},
      {id: 75, user_id: 31, futsal_game_id: 8, team_id: 4, goal: 0, assist: 0, created_at: "2017-04-18 09:38:15", updated_at: "2017-04-18 09:39:41"},
      {id: 76, user_id: 11, futsal_game_id: 8, team_id: 3, goal: 0, assist: 0, created_at: "2017-04-18 09:38:15", updated_at: "2017-04-18 09:38:41"},
      {id: 77, user_id: 39, futsal_game_id: 8, team_id: 3, goal: 0, assist: 0, created_at: "2017-04-18 09:38:15", updated_at: "2017-04-18 09:38:46"},
      {id: 78, user_id: 17, futsal_game_id: 8, team_id: 4, goal: 0, assist: 0, created_at: "2017-04-18 09:38:16", updated_at: "2017-04-18 09:39:47"},
      {id: 79, user_id: 40, futsal_game_id: 8, team_id: 4, goal: 0, assist: 0, created_at: "2017-04-18 09:39:11", updated_at: "2017-04-18 09:39:52"},
      {id: 80, user_id: 15, futsal_game_id: 8, team_id: 4, goal: 0, assist: 0, created_at: "2017-04-18 09:39:11", updated_at: "2017-04-18 09:40:28"},
      {id: 81, user_id: 19, futsal_game_id: 8, team_id: 4, goal: 0, assist: 0, created_at: "2017-04-18 09:39:36", updated_at: "2017-04-18 09:40:20"}
    ])
    Goal.create!([
      {id: 1, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 95, video_link: "http://www.dailymotion.com/embed/video/x5gh7vk?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 22:07:36"},
      {id: 2, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 215, video_link: "http://www.dailymotion.com/embed/video/x5gh80m?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:35:52"},
      {id: 3, futsal_game_id: 1, team_id: 2, goal_id: 8, assist_id: 4, time: 263, video_link: "http://www.dailymotion.com/embed/video/x5gh85q?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 10:46:34"},
      {id: 4, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: nil, time: 466, video_link: "http://www.dailymotion.com/embed/video/x5gh8a9?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:40:04"},
      {id: 5, futsal_game_id: 1, team_id: 2, goal_id: 7, assist_id: 1, time: 521, video_link: "http://www.dailymotion.com/embed/video/x5gh8gc?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:41:02"},
      {id: 6, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: 7, time: 568, video_link: "http://www.dailymotion.com/embed/video/x5gh8kp?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:41:57"},
      {id: 7, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: 7, time: 711, video_link: "http://www.dailymotion.com/embed/video/x5gh8nx?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:43:07"},
      {id: 8, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: 6, time: 794, video_link: "http://www.dailymotion.com/embed/video/x5gh8rn?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:45:15"},
      {id: 9, futsal_game_id: 1, team_id: 2, goal_id: 4, assist_id: 3, time: 839, video_link: "http://www.dailymotion.com/embed/video/x5gh8w1?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:46:53"},
      {id: 10, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 1014, video_link: "http://www.dailymotion.com/embed/video/x5gh90z?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:47:41"},
      {id: 11, futsal_game_id: 1, team_id: 2, goal_id: 4, assist_id: 1, time: 1147, video_link: "http://www.dailymotion.com/embed/video/x5gh95h?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:49:24"},
      {id: 12, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: nil, time: 1284, video_link: "http://www.dailymotion.com/embed/video/x5gh9a0?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:50:38"},
      {id: 13, futsal_game_id: 1, team_id: 2, goal_id: 4, assist_id: nil, time: 1305, video_link: "http://www.dailymotion.com/embed/video/x5gh9e4?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:51:25"},
      {id: 14, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 1356, video_link: "http://www.dailymotion.com/embed/video/x5gh9ik?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:52:00"},
      {id: 15, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: nil, time: 1444, video_link: "http://www.dailymotion.com/embed/video/x5gh9me?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:53:10"},
      {id: 16, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 1511, video_link: "http://www.dailymotion.com/embed/video/x5gh9qi?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 20:54:27"},
      {id: 17, futsal_game_id: 1, team_id: 2, goal_id: 7, assist_id: nil, time: 1572, video_link: "http://www.dailymotion.com/embed/video/x5gh9uu?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:01:30"},
      {id: 18, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 1650, video_link: "http://www.dailymotion.com/embed/video/x5gh9zi?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:02:01"},
      {id: 19, futsal_game_id: 1, team_id: 2, goal_id: 8, assist_id: nil, time: 1710, video_link: "http://www.dailymotion.com/embed/video/x5gha3x?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:03:22"},
      {id: 20, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 1842, video_link: "http://www.dailymotion.com/embed/video/x5gha81?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:04:20"},
      {id: 21, futsal_game_id: 1, team_id: 2, goal_id: 8, assist_id: 4, time: 2057, video_link: "http://www.dailymotion.com/embed/video/x5ghacw?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:05:38"},
      {id: 22, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: 9, time: 2100, video_link: "http://www.dailymotion.com/embed/video/x5ghahg?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:08:13"},
      {id: 23, futsal_game_id: 1, team_id: 1, goal_id: 5, assist_id: nil, time: 2134, video_link: "http://www.dailymotion.com/embed/video/x5ghalr?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:09:35"},
      {id: 24, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 2324, video_link: "http://www.dailymotion.com/embed/video/x5ghapj?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:10:06"},
      {id: 25, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 2373, video_link: "http://www.dailymotion.com/embed/video/x5ghaud?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:11:19"},
      {id: 26, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: 10, time: 2408, video_link: "http://www.dailymotion.com/embed/video/x5ghazg?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:13:23"},
      {id: 27, futsal_game_id: 1, team_id: 1, goal_id: 9, assist_id: nil, time: 2494, video_link: "http://www.dailymotion.com/embed/video/x5ghb3h?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:15:50"},
      {id: 28, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 2568, video_link: "http://www.dailymotion.com/embed/video/x5ghb7f?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:17:19"},
      {id: 29, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: 10, time: 2680, video_link: "http://www.dailymotion.com/embed/video/x5ghbas?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:18:58"},
      {id: 30, futsal_game_id: 1, team_id: 2, goal_id: 4, assist_id: nil, time: 2731, video_link: "http://www.dailymotion.com/embed/video/x5ghbej?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:20:16"},
      {id: 31, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: nil, time: 2843, video_link: "http://www.dailymotion.com/embed/video/x5ghbjz?autoPlay=1", created_at: "2017-03-28 22:26:00", updated_at: "2017-03-29 21:21:22"},
      {id: 32, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: 4, time: 2902, video_link: "http://www.dailymotion.com/embed/video/x5ghbno?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:21:58"},
      {id: 33, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: 4, time: 2902, video_link: "http://www.dailymotion.com/embed/video/x5ghbri?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:23:17"},
      {id: 34, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: 5, time: 2977, video_link: "http://www.dailymotion.com/embed/video/x5ghbv2?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:23:51"},
      {id: 35, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: 6, time: 3065, video_link: "http://www.dailymotion.com/embed/video/x5ghbzn?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:24:37"},
      {id: 36, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 3129, video_link: "http://www.dailymotion.com/embed/video/x5ghc3a?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:25:14"},
      {id: 37, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: 8, time: 3146, video_link: "http://www.dailymotion.com/embed/video/x5ghc79?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:26:17"},
      {id: 38, futsal_game_id: 1, team_id: 1, goal_id: 5, assist_id: nil, time: 3187, video_link: "http://www.dailymotion.com/embed/video/x5ghca0?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:30:55"},
      {id: 39, futsal_game_id: 1, team_id: 1, goal_id: 6, assist_id: nil, time: 3356, video_link: "http://www.dailymotion.com/embed/video/x5ghccg?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:32:03"},
      {id: 40, futsal_game_id: 1, team_id: 2, goal_id: 7, assist_id: nil, time: 3448, video_link: "http://www.dailymotion.com/embed/video/x5ghcer?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:33:01"},
      {id: 41, futsal_game_id: 1, team_id: 2, goal_id: 1, assist_id: 7, time: 3494, video_link: "http://www.dailymotion.com/embed/video/x5ghchf?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:33:59"},
      {id: 42, futsal_game_id: 1, team_id: 1, goal_id: 2, assist_id: nil, time: 3527, video_link: "http://www.dailymotion.com/embed/video/x5ghckp?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:34:27"},
      {id: 43, futsal_game_id: 1, team_id: 1, goal_id: 6, assist_id: nil, time: 3574, video_link: "http://www.dailymotion.com/embed/video/x5ghcop?autoPlay=1", created_at: "2017-03-28 22:26:01", updated_at: "2017-03-29 21:35:00"},
      {id: 44, futsal_game_id: 2, team_id: 3, goal_id: 19, assist_id: 13, time: 103, video_link: "http://www.dailymotion.com/embed/video/x5gdpet?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:45:25"},
      {id: 45, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 129, video_link: "http://www.dailymotion.com/embed/video/x5gdpih?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:46:00"},
      {id: 46, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 277, video_link: "http://www.dailymotion.com/embed/video/x5gdpme?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:58:02"},
      {id: 47, futsal_game_id: 2, team_id: 3, goal_id: 19, assist_id: nil, time: 313, video_link: "http://www.dailymotion.com/embed/video/x5gdpqs?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:52:58"},
      {id: 48, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 489, video_link: "http://www.dailymotion.com/embed/video/x5gdpv1?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:54:35"},
      {id: 49, futsal_game_id: 2, team_id: 3, goal_id: 17, assist_id: nil, time: 509, video_link: "http://www.dailymotion.com/embed/video/x5gdpz8?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:55:24"},
      {id: 50, futsal_game_id: 2, team_id: 3, goal_id: 1, assist_id: nil, time: 734, video_link: "http://www.dailymotion.com/embed/video/x5gdq44?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-03-30 11:56:31"},
      {id: 51, futsal_game_id: 2, team_id: 3, goal_id: 1, assist_id: 13, time: 779, video_link: "http://www.dailymotion.com/embed/video/x5gdq8w?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:03:26"},
      {id: 52, futsal_game_id: 2, team_id: 4, goal_id: 14, assist_id: nil, time: 818, video_link: "http://www.dailymotion.com/embed/video/x5gdqe9?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:05:04"},
      {id: 53, futsal_game_id: 2, team_id: 3, goal_id: 13, assist_id: nil, time: 876, video_link: "http://www.dailymotion.com/embed/video/x5gdqjh?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:05:43"},
      {id: 54, futsal_game_id: 2, team_id: 3, goal_id: 13, assist_id: nil, time: 983, video_link: "http://www.dailymotion.com/embed/video/x5gdqob?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:06:30"},
      {id: 55, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 1010, video_link: "http://www.dailymotion.com/embed/video/x5gdqsc?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:10:19"},
      {id: 56, futsal_game_id: 2, team_id: 4, goal_id: 16, assist_id: nil, time: 1313, video_link: "http://www.dailymotion.com/embed/video/x5gdqxj?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:11:05"},
      {id: 57, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 1364, video_link: "http://www.dailymotion.com/embed/video/x5gdr1q?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:11:50"},
      {id: 58, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 1522, video_link: "http://www.dailymotion.com/embed/video/x5gdr6a?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:13:23"},
      {id: 59, futsal_game_id: 2, team_id: 3, goal_id: 13, assist_id: 20, time: 1573, video_link: "http://www.dailymotion.com/embed/video/x5gdra7?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:14:02"},
      {id: 60, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 1631, video_link: "http://www.dailymotion.com/embed/video/x5gdrep?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:15:08"},
      {id: 61, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 1671, video_link: "http://www.dailymotion.com/embed/video/x5gdrkb?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:16:11"},
      {id: 62, futsal_game_id: 2, team_id: 3, goal_id: 19, assist_id: nil, time: 1693, video_link: "http://www.dailymotion.com/embed/video/x5gdrop?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:16:49"},
      {id: 63, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: 11, time: 1722, video_link: "http://www.dailymotion.com/embed/video/x5gdrt1?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:17:56"},
      {id: 64, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: 12, time: 1738, video_link: "http://www.dailymotion.com/embed/video/x5gdrxm?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:20:24"},
      {id: 65, futsal_game_id: 2, team_id: 3, goal_id: 19, assist_id: nil, time: 1764, video_link: "http://www.dailymotion.com/embed/video/x5gds0s?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:21:05"},
      {id: 66, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 1894, video_link: "http://www.dailymotion.com/embed/video/x5gds4l?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:22:14"},
      {id: 67, futsal_game_id: 2, team_id: 3, goal_id: 17, assist_id: 13, time: 1929, video_link: "http://www.dailymotion.com/embed/video/x5gdsae?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:23:19"},
      {id: 68, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 1957, video_link: "http://www.dailymotion.com/embed/video/x5gdsg3?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:24:03"},
      {id: 69, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 1978, video_link: "http://www.dailymotion.com/embed/video/x5gdsle?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:24:50"},
      {id: 70, futsal_game_id: 2, team_id: 3, goal_id: 13, assist_id: 17, time: 2028, video_link: "http://www.dailymotion.com/embed/video/x5gdspv?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:26:39"},
      {id: 71, futsal_game_id: 2, team_id: 3, goal_id: 20, assist_id: 13, time: 2057, video_link: "http://www.dailymotion.com/embed/video/x5gdsty?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:27:22"},
      {id: 72, futsal_game_id: 2, team_id: 3, goal_id: 19, assist_id: 20, time: 2222, video_link: "http://www.dailymotion.com/embed/video/x5gdsz3?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:28:05"},
      {id: 73, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 2421, video_link: "http://www.dailymotion.com/embed/video/x5gdt3m?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:29:19"},
      {id: 74, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: 11, time: 2505, video_link: "http://www.dailymotion.com/embed/video/x5gdt77?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:31:50"},
      {id: 75, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 2530, video_link: "http://www.dailymotion.com/embed/video/x5gdtcc?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:32:29"},
      {id: 76, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: 12, time: 2621, video_link: "http://www.dailymotion.com/embed/video/x5gdtgl?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:33:14"},
      {id: 77, futsal_game_id: 2, team_id: 4, goal_id: 14, assist_id: nil, time: 2747, video_link: "http://www.dailymotion.com/embed/video/x5gdtkh?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-01 21:45:29"},
      {id: 78, futsal_game_id: 2, team_id: 3, goal_id: 13, assist_id: nil, time: 2793, video_link: "http://www.dailymotion.com/embed/video/x5gdtpc?autoPlay=1", created_at: "2017-03-30 11:18:30", updated_at: "2017-04-02 14:43:53"},
      {id: 79, futsal_game_id: 2, team_id: 3, goal_id: 1, assist_id: 13, time: 2855, video_link: "http://www.dailymotion.com/embed/video/x5gdtuz?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:46:55"},
      {id: 80, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 2928, video_link: "http://www.dailymotion.com/embed/video/x5gdu1z?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:48:12"},
      {id: 81, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: nil, time: 2963, video_link: "http://www.dailymotion.com/embed/video/x5gdu6j?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:49:23"},
      {id: 82, futsal_game_id: 2, team_id: 4, goal_id: 14, assist_id: 12, time: 3119, video_link: "http://www.dailymotion.com/embed/video/x5gdub9?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:50:59"},
      {id: 83, futsal_game_id: 2, team_id: 4, goal_id: 16, assist_id: 15, time: 3218, video_link: "http://www.dailymotion.com/embed/video/x5gdufp?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:52:01"},
      {id: 84, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: 16, time: 3281, video_link: "http://www.dailymotion.com/embed/video/x5gdunh?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:52:56"},
      {id: 85, futsal_game_id: 2, team_id: 4, goal_id: 15, assist_id: 12, time: 3324, video_link: "http://www.dailymotion.com/embed/video/x5gdut3?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:54:01"},
      {id: 86, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: 15, time: 3374, video_link: "http://www.dailymotion.com/embed/video/x5gduxp?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:55:16"},
      {id: 87, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: nil, time: 3529, video_link: "http://www.dailymotion.com/embed/video/x5gdv1p?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:56:23"},
      {id: 88, futsal_game_id: 2, team_id: 4, goal_id: 12, assist_id: 11, time: 3565, video_link: "http://www.dailymotion.com/embed/video/x5gdv55?autoPlay=1", created_at: "2017-03-30 11:18:31", updated_at: "2017-04-01 21:57:19"},
      {id: 89, futsal_game_id: 4, team_id: 3, goal_id: 15, assist_id: nil, time: 33, video_link: "http://www.dailymotion.com/embed/video/x5h3tzp?autoPlay=1", created_at: "2017-04-03 10:49:09", updated_at: "2017-04-03 11:05:27"},
      {id: 90, futsal_game_id: 4, team_id: 4, goal_id: 19, assist_id: 32, time: 75, video_link: "http://www.dailymotion.com/embed/video/x5h3u5m?autoPlay=1", created_at: "2017-04-03 10:49:09", updated_at: "2017-04-03 11:06:04"},
      {id: 91, futsal_game_id: 4, team_id: 4, goal_id: 19, assist_id: nil, time: 210, video_link: "http://www.dailymotion.com/embed/video/x5h3uaj?autoPlay=1", created_at: "2017-04-03 10:49:09", updated_at: "2017-04-03 11:14:48"},
      {id: 92, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: nil, time: 318, video_link: "http://www.dailymotion.com/embed/video/x5h3ueh?autoPlay=1", created_at: "2017-04-03 10:49:09", updated_at: "2017-04-04 11:06:32"},
      {id: 93, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: nil, time: 614, video_link: "http://www.dailymotion.com/embed/video/x5h3uj5?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:08:25"},
      {id: 94, futsal_game_id: 4, team_id: 3, goal_id: 16, assist_id: 31, time: 809, video_link: "http://www.dailymotion.com/embed/video/x5h3unr?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:10:31"},
      {id: 95, futsal_game_id: 4, team_id: 3, goal_id: 4, assist_id: 15, time: 874, video_link: "http://www.dailymotion.com/embed/video/x5h3usq?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:12:49"},
      {id: 96, futsal_game_id: 4, team_id: 3, goal_id: 15, assist_id: 4, time: 958, video_link: "http://www.dailymotion.com/embed/video/x5h3uy6?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:14:04"},
      {id: 97, futsal_game_id: 4, team_id: 4, goal_id: 18, assist_id: 32, time: 1005, video_link: "http://www.dailymotion.com/embed/video/x5h3v43?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:15:13"},
      {id: 98, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: nil, time: 1092, video_link: "http://www.dailymotion.com/embed/video/x5h3v8y?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:19:15"},
      {id: 99, futsal_game_id: 4, team_id: 4, goal_id: 18, assist_id: 12, time: 1209, video_link: "http://www.dailymotion.com/embed/video/x5h3vek?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:20:36"},
      {id: 100, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: nil, time: 1275, video_link: "http://www.dailymotion.com/embed/video/x5h3vjo?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 15:37:12"},
      {id: 101, futsal_game_id: 4, team_id: 3, goal_id: 16, assist_id: 31, time: 1345, video_link: "http://www.dailymotion.com/embed/video/x5h3vqe?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:36:54"},
      {id: 102, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: nil, time: 1402, video_link: "http://www.dailymotion.com/embed/video/x5h3vxn?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:37:59"},
      {id: 103, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: nil, time: 1581, video_link: "http://www.dailymotion.com/embed/video/x5h3w57?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:43:37"},
      {id: 104, futsal_game_id: 4, team_id: 3, goal_id: 1, assist_id: 31, time: 1611, video_link: "http://www.dailymotion.com/embed/video/x5h3wco?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:40:57"},
      {id: 105, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: 12, time: 1677, video_link: "http://www.dailymotion.com/embed/video/x5h3win?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 15:29:32"},
      {id: 106, futsal_game_id: 4, team_id: 3, goal_id: 4, assist_id: 16, time: 1751, video_link: "http://www.dailymotion.com/embed/video/x5h3wpp?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 15:31:29"},
      {id: 107, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: 19, time: 1909, video_link: "http://www.dailymotion.com/embed/video/x5h3wx9?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 15:32:24"},
      {id: 108, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: nil, time: 1981, video_link: "http://www.dailymotion.com/embed/video/x5h3x44?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 16:05:12"},
      {id: 109, futsal_game_id: 4, team_id: 3, goal_id: 1, assist_id: nil, time: 2073, video_link: "http://www.dailymotion.com/embed/video/x5h3xal?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:22:15"},
      {id: 110, futsal_game_id: 4, team_id: 3, goal_id: 4, assist_id: nil, time: 2167, video_link: "http://www.dailymotion.com/embed/video/x5h3xgi?autoPlay=1", created_at: "2017-04-03 10:49:10", updated_at: "2017-04-04 11:23:07"},
      {id: 111, futsal_game_id: 4, team_id: 3, goal_id: 4, assist_id: nil, time: 2263, video_link: "http://www.dailymotion.com/embed/video/x5h3xli?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:36:03"},
      {id: 112, futsal_game_id: 4, team_id: 3, goal_id: 1, assist_id: 16, time: 2322, video_link: "http://www.dailymotion.com/embed/video/x5h3xpo?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:40:38"},
      {id: 113, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: nil, time: 2377, video_link: "http://www.dailymotion.com/embed/video/x5h3xuk?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:39:38"},
      {id: 114, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: 11, time: 2518, video_link: "http://www.dailymotion.com/embed/video/x5h3xzt?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:53:50"},
      {id: 115, futsal_game_id: 4, team_id: 3, goal_id: 4, assist_id: nil, time: 2863, video_link: "http://www.dailymotion.com/embed/video/x5h3y5z?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:41:16"},
      {id: 116, futsal_game_id: 4, team_id: 3, goal_id: 1, assist_id: 31, time: 2949, video_link: "http://www.dailymotion.com/embed/video/x5h3yc4?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:41:51"},
      {id: 117, futsal_game_id: 4, team_id: 3, goal_id: 31, assist_id: 1, time: 3088, video_link: "http://www.dailymotion.com/embed/video/x5h3yit?autoPlay=1", created_at: "2017-04-03 10:50:34", updated_at: "2017-04-04 15:42:25"},
      {id: 118, futsal_game_id: 4, team_id: 4, goal_id: 18, assist_id: nil, time: 3196, video_link: "http://www.dailymotion.com/embed/video/x5h3ypl?autoPlay=1", created_at: "2017-04-03 10:52:05", updated_at: "2017-04-04 15:43:20"},
      {id: 119, futsal_game_id: 4, team_id: 4, goal_id: 12, assist_id: 18, time: 3241, video_link: "http://www.dailymotion.com/embed/video/x5h3yw6?autoPlay=1", created_at: "2017-04-03 10:52:06", updated_at: "2017-04-04 15:43:53"},
      {id: 120, futsal_game_id: 4, team_id: 4, goal_id: 15, assist_id: 2, time: 2015, video_link: "http://www.dailymotion.com/embed/video/x5h3z34?autoPlay=1", created_at: "2017-04-03 10:52:06", updated_at: "2017-04-04 16:04:29"},
      {id: 121, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: nil, time: 3398, video_link: "http://www.dailymotion.com/embed/video/x5h3z94?autoPlay=1", created_at: "2017-04-03 10:52:06", updated_at: "2017-04-04 15:48:54"},
      {id: 122, futsal_game_id: 4, team_id: 3, goal_id: 1, assist_id: nil, time: 3422, video_link: "http://www.dailymotion.com/embed/video/x5h3zfa?autoPlay=1", created_at: "2017-04-03 10:52:06", updated_at: "2017-04-04 15:49:40"},
      {id: 123, futsal_game_id: 4, team_id: 4, goal_id: 32, assist_id: nil, time: 3478, video_link: "http://www.dailymotion.com/embed/video/x5h3zlj?autoPlay=1", created_at: "2017-04-03 10:52:06", updated_at: "2017-04-04 15:50:36"},
      {id: 124, futsal_game_id: 6, team_id: 4, goal_id: 19, assist_id: 32, time: 48, video_link: "http://www.dailymotion.com/embed/video/x5horfp?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:02:04"},
      {id: 125, futsal_game_id: 6, team_id: 4, goal_id: 32, assist_id: nil, time: 69, video_link: "http://www.dailymotion.com/embed/video/x5horgx?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:03:43"},
      {id: 126, futsal_game_id: 6, team_id: 4, goal_id: 19, assist_id: nil, time: 90, video_link: "http://www.dailymotion.com/embed/video/x5horik?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:04:42"},
      {id: 127, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: 34, time: 178, video_link: "http://www.dailymotion.com/embed/video/x5hork4?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:11:31"},
      {id: 128, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: 4, time: 407, video_link: "http://www.dailymotion.com/embed/video/x5horln?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:12:43"},
      {id: 129, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: 1, time: 582, video_link: "http://www.dailymotion.com/embed/video/x5hormy?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:13:58"},
      {id: 130, futsal_game_id: 6, team_id: 4, goal_id: 19, assist_id: nil, time: 657, video_link: "http://www.dailymotion.com/embed/video/x5horow?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:14:56"},
      {id: 131, futsal_game_id: 6, team_id: 4, goal_id: 15, assist_id: nil, time: 744, video_link: "http://www.dailymotion.com/embed/video/x5horqo?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:16:54"},
      {id: 132, futsal_game_id: 6, team_id: 3, goal_id: 31, assist_id: nil, time: 782, video_link: "http://www.dailymotion.com/embed/video/x5hors2?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:17:56"},
      {id: 133, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: 4, time: 874, video_link: "http://www.dailymotion.com/embed/video/x5hortt?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:18:54"},
      {id: 134, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: nil, time: 936, video_link: "http://www.dailymotion.com/embed/video/x5horv9?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:20:27"},
      {id: 135, futsal_game_id: 6, team_id: 3, goal_id: 34, assist_id: 12, time: 1005, video_link: "http://www.dailymotion.com/embed/video/x5horws?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:21:06"},
      {id: 136, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: nil, time: 1118, video_link: "http://www.dailymotion.com/embed/video/x5horyh?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:21:37"},
      {id: 137, futsal_game_id: 6, team_id: 3, goal_id: 1, assist_id: nil, time: 1178, video_link: "http://www.dailymotion.com/embed/video/x5horzv?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:22:09"},
      {id: 138, futsal_game_id: 6, team_id: 4, goal_id: 32, assist_id: 15, time: 1204, video_link: "http://www.dailymotion.com/embed/video/x5hos1f?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:23:28"},
      {id: 139, futsal_game_id: 6, team_id: 3, goal_id: 31, assist_id: nil, time: 1324, video_link: "http://www.dailymotion.com/embed/video/x5hos2x?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:24:06"},
      {id: 140, futsal_game_id: 6, team_id: 4, goal_id: 16, assist_id: nil, time: 1348, video_link: "http://www.dailymotion.com/embed/video/x5hos4c?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:35:34"},
      {id: 141, futsal_game_id: 6, team_id: 4, goal_id: 15, assist_id: 35, time: 1434, video_link: "http://www.dailymotion.com/embed/video/x5hos5r?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:36:50"},
      {id: 142, futsal_game_id: 6, team_id: 3, goal_id: 4, assist_id: nil, time: 1472, video_link: "http://www.dailymotion.com/embed/video/x5hos7e?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:37:48"},
      {id: 143, futsal_game_id: 6, team_id: 4, goal_id: 15, assist_id: 16, time: 1551, video_link: "http://www.dailymotion.com/embed/video/x5hos9t?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:38:49"},
      {id: 144, futsal_game_id: 6, team_id: 3, goal_id: 34, assist_id: nil, time: 1677, video_link: "http://www.dailymotion.com/embed/video/x5hosc4?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:39:20"},
      {id: 145, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: nil, time: 1831, video_link: "http://www.dailymotion.com/embed/video/x5hosek?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:39:54"},
      {id: 146, futsal_game_id: 6, team_id: 4, goal_id: 15, assist_id: 35, time: 1924, video_link: "http://www.dailymotion.com/embed/video/x5hosgk?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:40:38"},
      {id: 147, futsal_game_id: 6, team_id: 4, goal_id: 32, assist_id: 19, time: 1995, video_link: "http://www.dailymotion.com/embed/video/x5hosjd?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:41:41"},
      {id: 148, futsal_game_id: 6, team_id: 4, goal_id: 32, assist_id: 35, time: 2060, video_link: "http://www.dailymotion.com/embed/video/x5hosmd?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 11:42:37"},
      {id: 149, futsal_game_id: 6, team_id: 4, goal_id: 19, assist_id: 32, time: 2100, video_link: "http://www.dailymotion.com/embed/video/x5hosog?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:17:44"},
      {id: 150, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: 1, time: 2200, video_link: "http://www.dailymotion.com/embed/video/x5hosr8?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 18:50:47"},
      {id: 151, futsal_game_id: 6, team_id: 3, goal_id: 1, assist_id: 34, time: 2297, video_link: "http://www.dailymotion.com/embed/video/x5hosuk?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 18:51:57"},
      {id: 152, futsal_game_id: 6, team_id: 4, goal_id: 35, assist_id: 32, time: 2358, video_link: "http://www.dailymotion.com/embed/video/x5hosyr?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 18:52:32"},
      {id: 153, futsal_game_id: 6, team_id: 4, goal_id: 19, assist_id: nil, time: 2514, video_link: "http://www.dailymotion.com/embed/video/x5hot2r?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 18:53:24"},
      {id: 154, futsal_game_id: 6, team_id: 3, goal_id: 31, assist_id: 12, time: 2574, video_link: "http://www.dailymotion.com/embed/video/x5hot6t?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 18:59:21"},
      {id: 155, futsal_game_id: 6, team_id: 3, goal_id: 31, assist_id: nil, time: 2596, video_link: "http://www.dailymotion.com/embed/video/x5hotag?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 18:58:53"},
      {id: 156, futsal_game_id: 6, team_id: 4, goal_id: 15, assist_id: 16, time: 2659, video_link: "http://www.dailymotion.com/embed/video/x5hotdf?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:00:02"},
      {id: 157, futsal_game_id: 6, team_id: 4, goal_id: 15, assist_id: nil, time: 2719, video_link: "http://www.dailymotion.com/embed/video/x5hotg9?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:07:26"},
      {id: 158, futsal_game_id: 6, team_id: 4, goal_id: 16, assist_id: nil, time: 2875, video_link: "http://www.dailymotion.com/embed/video/x5hotju?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:08:15"},
      {id: 159, futsal_game_id: 6, team_id: 3, goal_id: 31, assist_id: nil, time: 2988, video_link: "http://www.dailymotion.com/embed/video/x5hotmz?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:08:54"},
      {id: 160, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: nil, time: 3100, video_link: "http://www.dailymotion.com/embed/video/x5hotpe?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:09:22"},
      {id: 161, futsal_game_id: 6, team_id: 4, goal_id: 16, assist_id: 32, time: 3124, video_link: "http://www.dailymotion.com/embed/video/x5hots4?autoPlay=1", created_at: "2017-04-10 10:59:50", updated_at: "2017-04-10 19:09:55"},
      {id: 162, futsal_game_id: 6, team_id: 3, goal_id: 12, assist_id: 4, time: 3185, video_link: "http://www.dailymotion.com/embed/video/x5hotua?autoPlay=1", created_at: "2017-04-10 10:59:51", updated_at: "2017-04-10 11:32:16"},
      {id: 163, futsal_game_id: 6, team_id: 3, goal_id: 1, assist_id: 4, time: 3436, video_link: "http://www.dailymotion.com/embed/video/x5hotw8?autoPlay=1", created_at: "2017-04-10 10:59:51", updated_at: "2017-04-10 11:29:51"},
      {id: 164, futsal_game_id: 7, team_id: 1, goal_id: 9, assist_id: 8, time: 238, video_link: "http://www.dailymotion.com/embed/video/x5hsm5e?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:30:47"},
      {id: 165, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 390, video_link: "http://www.dailymotion.com/embed/video/x5hsmcp?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:32:07"},
      {id: 166, futsal_game_id: 7, team_id: 2, goal_id: 38, assist_id: nil, time: 430, video_link: "http://www.dailymotion.com/embed/video/x5hsmjs?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:32:49"},
      {id: 167, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 487, video_link: "http://www.dailymotion.com/embed/video/x5hsmr6?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:55:07"},
      {id: 168, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 593, video_link: "http://www.dailymotion.com/embed/video/x5hsn1o?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:27:40"},
      {id: 169, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: 4, time: 743, video_link: "http://www.dailymotion.com/embed/video/x5hsn97?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:27:40"},
      {id: 170, futsal_game_id: 7, team_id: 1, goal_id: 33, assist_id: nil, time: 780, video_link: "http://www.dailymotion.com/embed/video/x5hsnft?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 07:58:34"},
      {id: 171, futsal_game_id: 7, team_id: 2, goal_id: 36, assist_id: nil, time: 800, video_link: "http://www.dailymotion.com/embed/video/x5hsnlo?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:33:31"},
      {id: 172, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: 7, time: 940, video_link: "http://www.dailymotion.com/embed/video/x5hsnqt?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 08:00:49"},
      {id: 173, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 963, video_link: "http://www.dailymotion.com/embed/video/x5hsnwk?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:34:08"},
      {id: 174, futsal_game_id: 7, team_id: 1, goal_id: 4, assist_id: nil, time: 1003, video_link: "http://www.dailymotion.com/embed/video/x5hso1q?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:34:33"},
      {id: 175, futsal_game_id: 7, team_id: 2, goal_id: 36, assist_id: nil, time: 1096, video_link: "http://www.dailymotion.com/embed/video/x5hso60?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:35:01"},
      {id: 176, futsal_game_id: 7, team_id: 2, goal_id: 3, assist_id: nil, time: 1189, video_link: "http://www.dailymotion.com/embed/video/x5hsob0?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:35:57"},
      {id: 177, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: 4, time: 1350, video_link: "http://www.dailymotion.com/embed/video/x5hsoh1?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:36:39"},
      {id: 178, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 1478, video_link: "http://www.dailymotion.com/embed/video/x5hsomi?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:37:22"},
      {id: 179, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: 7, time: 1530, video_link: "http://www.dailymotion.com/embed/video/x5hsorz?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:38:18"},
      {id: 180, futsal_game_id: 7, team_id: 1, goal_id: 9, assist_id: 2, time: 1633, video_link: "http://www.dailymotion.com/embed/video/x5hsoy9?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:39:13"},
      {id: 181, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 1808, video_link: "http://www.dailymotion.com/embed/video/x5hsp3z?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:47:30"},
      {id: 182, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 1848, video_link: "http://www.dailymotion.com/embed/video/x5hsp9e?autoPlay=1", created_at: "2017-04-11 07:27:40", updated_at: "2017-04-11 10:48:46"},
      {id: 183, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 1962, video_link: "http://www.dailymotion.com/embed/video/x5hspg1?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:49:43"},
      {id: 184, futsal_game_id: 7, team_id: 1, goal_id: 8, assist_id: 4, time: 2197, video_link: "http://www.dailymotion.com/embed/video/x5hspn2?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:51:28"},
      {id: 185, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 2240, video_link: "http://www.dailymotion.com/embed/video/x5hspul?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:52:50"},
      {id: 186, futsal_game_id: 7, team_id: 1, goal_id: 8, assist_id: 2, time: 2267, video_link: "http://www.dailymotion.com/embed/video/x5hsq2a?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:53:35"},
      {id: 187, futsal_game_id: 7, team_id: 2, goal_id: 36, assist_id: 1, time: 2338, video_link: "http://www.dailymotion.com/embed/video/x5hsq9m?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:54:30"},
      {id: 188, futsal_game_id: 7, team_id: 2, goal_id: 7, assist_id: 1, time: 2363, video_link: "http://www.dailymotion.com/embed/video/x5hsqhi?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:55:37"},
      {id: 189, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: 3, time: 2436, video_link: "http://www.dailymotion.com/embed/video/x5hsqom?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 10:56:54"},
      {id: 190, futsal_game_id: 7, team_id: 2, goal_id: 36, assist_id: nil, time: 2535, video_link: "http://www.dailymotion.com/embed/video/x5hsqu7?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:02:36"},
      {id: 191, futsal_game_id: 7, team_id: 2, goal_id: 3, assist_id: nil, time: 2572, video_link: "http://www.dailymotion.com/embed/video/x5hsqzv?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:03:31"},
      {id: 192, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 2792, video_link: "http://www.dailymotion.com/embed/video/x5hsr6n?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:04:20"},
      {id: 193, futsal_game_id: 7, team_id: 1, goal_id: 4, assist_id: 9, time: 2869, video_link: "http://www.dailymotion.com/embed/video/x5hsrdf?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:05:12"},
      {id: 194, futsal_game_id: 7, team_id: 1, goal_id: 9, assist_id: 4, time: 2994, video_link: "http://www.dailymotion.com/embed/video/x5hsrim?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:05:59"},
      {id: 195, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 3067, video_link: "http://www.dailymotion.com/embed/video/x5hsron?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:06:27"},
      {id: 196, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 3128, video_link: "http://www.dailymotion.com/embed/video/x5hsruz?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:07:44"},
      {id: 197, futsal_game_id: 7, team_id: 2, goal_id: 36, assist_id: 1, time: 3235, video_link: "http://www.dailymotion.com/embed/video/x5hsrzq?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:08:52"},
      {id: 198, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 3265, video_link: "http://www.dailymotion.com/embed/video/x5hss4a?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:09:20"},
      {id: 199, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: nil, time: 3300, video_link: "http://www.dailymotion.com/embed/video/x5hss9w?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:09:57"},
      {id: 200, futsal_game_id: 7, team_id: 2, goal_id: 36, assist_id: nil, time: 3369, video_link: "http://www.dailymotion.com/embed/video/x5hssfy?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:10:39"},
      {id: 201, futsal_game_id: 7, team_id: 1, goal_id: 4, assist_id: nil, time: 3415, video_link: "http://www.dailymotion.com/embed/video/x5hssns?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:12:18"},
      {id: 202, futsal_game_id: 7, team_id: 2, goal_id: 1, assist_id: 7, time: 3444, video_link: "http://www.dailymotion.com/embed/video/x5hssuv?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:12:51"},
      {id: 203, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 3503, video_link: "http://www.dailymotion.com/embed/video/x5hst1u?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:13:34"},
      {id: 204, futsal_game_id: 7, team_id: 1, goal_id: 4, assist_id: 2, time: 3532, video_link: "http://www.dailymotion.com/embed/video/x5hst8w?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:14:08"},
      {id: 205, futsal_game_id: 7, team_id: 1, goal_id: 2, assist_id: nil, time: 3557, video_link: "http://www.dailymotion.com/embed/video/x5hstgl?autoPlay=1", created_at: "2017-04-11 07:27:41", updated_at: "2017-04-11 11:14:39"},
      {id: 206, futsal_game_id: 8, team_id: 4, goal_id: 15, assist_id: nil, time: 148, video_link: "http://www.dailymotion.com/embed/video/x5inggu?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 10:04:16"},
      {id: 207, futsal_game_id: 8, team_id: 4, goal_id: 40, assist_id: 31, time: 248, video_link: "http://www.dailymotion.com/embed/video/x5ingsh?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 10:16:21"},
      {id: 208, futsal_game_id: 8, team_id: 3, goal_id: 11, assist_id: nil, time: 676, video_link: "http://www.dailymotion.com/embed/video/x5inh2f?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 10:48:00"},
      {id: 209, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: nil, time: 722, video_link: "http://www.dailymotion.com/embed/video/x5inhbf?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 10:59:31"},
      {id: 210, futsal_game_id: 8, team_id: 3, goal_id: 4, assist_id: nil, time: 867, video_link: "http://www.dailymotion.com/embed/video/x5inhmv?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:00:41"},
      {id: 211, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: nil, time: 967, video_link: "http://www.dailymotion.com/embed/video/x5inhyt?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:01:22"},
      {id: 212, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 39, time: 999, video_link: "http://www.dailymotion.com/embed/video/x5ini8n?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:02:18"},
      {id: 213, futsal_game_id: 8, team_id: 3, goal_id: 1, assist_id: 32, time: 1013, video_link: "http://www.dailymotion.com/embed/video/x5inihv?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:03:12"},
      {id: 214, futsal_game_id: 8, team_id: 3, goal_id: 1, assist_id: nil, time: 1054, video_link: "http://www.dailymotion.com/embed/video/x5inir5?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:04:41"},
      {id: 215, futsal_game_id: 8, team_id: 4, goal_id: 15, assist_id: 40, time: 1099, video_link: "http://www.dailymotion.com/embed/video/x5iniyi?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:07:49"},
      {id: 216, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 1, time: 1166, video_link: "http://www.dailymotion.com/embed/video/x5inj5u?autoPlay=1", created_at: "2017-04-18 06:42:15", updated_at: "2017-04-18 11:10:02"},
      {id: 217, futsal_game_id: 8, team_id: 4, goal_id: 31, assist_id: nil, time: 1285, video_link: "http://www.dailymotion.com/embed/video/x5injei?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:14:36"},
      {id: 218, futsal_game_id: 8, team_id: 3, goal_id: 39, assist_id: 4, time: 1483, video_link: "http://www.dailymotion.com/embed/video/x5injm3?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:16:01"},
      {id: 219, futsal_game_id: 8, team_id: 4, goal_id: 17, assist_id: nil, time: 1515, video_link: "http://www.dailymotion.com/embed/video/x5injvs?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:17:27"},
      {id: 220, futsal_game_id: 8, team_id: 3, goal_id: 39, assist_id: nil, time: 1563, video_link: "http://www.dailymotion.com/embed/video/x5ink3v?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:25:57"},
      {id: 221, futsal_game_id: 8, team_id: 3, goal_id: 1, assist_id: nil, time: 1617, video_link: "http://www.dailymotion.com/embed/video/x5inkbh?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:26:45"},
      {id: 222, futsal_game_id: 8, team_id: 4, goal_id: 17, assist_id: 40, time: 1880, video_link: "http://www.dailymotion.com/embed/video/x5inkiy?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:27:45"},
      {id: 223, futsal_game_id: 8, team_id: 4, goal_id: 40, assist_id: 17, time: 2020, video_link: "http://www.dailymotion.com/embed/video/x5inkri?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:29:47"},
      {id: 224, futsal_game_id: 8, team_id: 4, goal_id: 19, assist_id: 31, time: 2323, video_link: "http://www.dailymotion.com/embed/video/x5inkyp?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:31:18"},
      {id: 225, futsal_game_id: 8, team_id: 3, goal_id: 4, assist_id: nil, time: 2369, video_link: "http://www.dailymotion.com/embed/video/x5inl6u?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:31:42"},
      {id: 226, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 11, time: 2409, video_link: "http://www.dailymotion.com/embed/video/x5inle2?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:32:32"},
      {id: 227, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 1, time: 2526, video_link: "http://www.dailymotion.com/embed/video/x5inlkz?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:33:17"},
      {id: 228, futsal_game_id: 8, team_id: 4, goal_id: 19, assist_id: nil, time: 2558, video_link: "http://www.dailymotion.com/embed/video/x5inlst?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:35:03"},
      {id: 229, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 1, time: 2679, video_link: "http://www.dailymotion.com/embed/video/x5inm0k?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:35:51"},
      {id: 230, futsal_game_id: 8, team_id: 3, goal_id: 4, assist_id: 1, time: 2729, video_link: "http://www.dailymotion.com/embed/video/x5inm7p?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:37:10"},
      {id: 231, futsal_game_id: 8, team_id: 4, goal_id: 15, assist_id: 40, time: 2807, video_link: "http://www.dailymotion.com/embed/video/x5inmf8?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:39:30"},
      {id: 232, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 1, time: 3033, video_link: "http://www.dailymotion.com/embed/video/x5inmlg?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:40:32"},
      {id: 233, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 1, time: 3117, video_link: "http://www.dailymotion.com/embed/video/x5inmsm?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:41:14"},
      {id: 234, futsal_game_id: 8, team_id: 4, goal_id: 40, assist_id: nil, time: 3172, video_link: "http://www.dailymotion.com/embed/video/x5inn78?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:48:40"},
      {id: 235, futsal_game_id: 8, team_id: 4, goal_id: 15, assist_id: 40, time: 3201, video_link: "http://www.dailymotion.com/embed/video/x5innfa?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 11:49:38"},
      {id: 236, futsal_game_id: 8, team_id: 3, goal_id: 32, assist_id: 1, time: 3295, video_link: "http://www.dailymotion.com/embed/video/x5innnm?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:50:09"},
      {id: 237, futsal_game_id: 8, team_id: 3, goal_id: 39, assist_id: nil, time: 3315, video_link: "http://www.dailymotion.com/embed/video/x5innwb?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:49:20"},
      {id: 238, futsal_game_id: 8, team_id: 3, goal_id: 4, assist_id: 39, time: 3372, video_link: "http://www.dailymotion.com/embed/video/x5ino4s?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:34:00"},
      {id: 239, futsal_game_id: 8, team_id: 3, goal_id: 1, assist_id: 4, time: 3400, video_link: "http://www.dailymotion.com/embed/video/x5inod5?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:52:04"},
      {id: 240, futsal_game_id: 8, team_id: 4, goal_id: 40, assist_id: nil, time: 3440, video_link: "http://www.dailymotion.com/embed/video/x5inokh?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:38:41"},
      {id: 241, futsal_game_id: 8, team_id: 3, goal_id: 39, assist_id: nil, time: 3478, video_link: "http://www.dailymotion.com/embed/video/x5inot6?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:39:55"},
      {id: 242, futsal_game_id: 8, team_id: 3, goal_id: 1, assist_id: 4, time: 3501, video_link: "http://www.dailymotion.com/embed/video/x5inp2l?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:41:31"},
      {id: 243, futsal_game_id: 8, team_id: 4, goal_id: 40, assist_id: nil, time: 3536, video_link: "http://www.dailymotion.com/embed/video/x5inpau?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:42:46"}
    ])
    GoalMark.create!([
      {id: 1, goal_id: 1, mark: 2, user_id: 1, mac_address: "::1", created_at: "2017-04-04 21:25:46", updated_at: "2017-04-04 22:36:55"},
      {id: 2, goal_id: 90, mark: 3, user_id: nil, mac_address: "::1", created_at: "2017-04-04 22:39:02", updated_at: "2017-04-04 22:42:31"}
    ])
    HighlightType.create!([
      {id: 1, name: "Blessure", icon: "ambulance", created_at: "2017-03-30 21:58:42", updated_at: "2017-03-30 21:58:55"}
    ])
    Highlight.create!([
      {id: 1, name: "", highlight_type_id: 1, author_id: nil, victim_id: 6, time: 2197, futsal_game_id: 1, team_id: 1, created_at: "2017-03-30 22:14:02", updated_at: "2017-03-30 22:26:12"},
      {id: 2, name: "", highlight_type_id: 1, author_id: nil, victim_id: 8, time: 2182, futsal_game_id: 1, team_id: 2, created_at: "2017-03-30 22:15:36", updated_at: "2017-03-30 22:15:36"},
      {id: 3, name: "", highlight_type_id: 1, author_id: 1, victim_id: 18, time: 3138, futsal_game_id: 4, team_id: 4, created_at: "2017-04-04 15:47:28", updated_at: "2017-04-04 15:47:28"},
      {id: 4, name: "", highlight_type_id: 1, author_id: 1, victim_id: 12, time: 2190, futsal_game_id: 4, team_id: 4, created_at: "2017-04-04 16:06:05", updated_at: "2017-04-04 16:06:05"}
    ])
  end
end