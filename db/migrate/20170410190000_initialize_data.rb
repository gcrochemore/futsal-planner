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

    user = User.new({id: 40, email: "geoffreyg@geoffreyg", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UDH73mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Geoffrey", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 41, email: "aureliens@aureliens", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgxdDH73mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Aurelien", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 42, email: "alainh@alainh", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreD3mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alain", last_name: "H", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 43, email: "julienr@julienr", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4U73azmxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Julien", last_name: "R", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 44, email: "arnaudp@arnaudp", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgxdDH73mxUEZPMMx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arnaud", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 45, email: "thibaultl@thibaultl", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UAZD3mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibault", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 46, email: "louisd@louisd", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4U73aDPxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Louis", last_name: "D", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 47, email: "jonasc@jonasc", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreDHSxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jonas", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 48, email: "guillaumel@guillaumel", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 49, email: "thibaultn@thibaultn", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreCVSxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibault", last_name: "N", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 50, email: "francoisg@francoisg", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Francois", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 51, email: "romains@romains", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3UImxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romain", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 52, email: "greg@greg", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgERE3azmxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Greg", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 53, email: "jean-clements@jean-clements", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAMO4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jean-Clément", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 54, email: "robinm@robinm", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jRERE3UImxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Robin", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 55, email: "baptisteb@baptisteb", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgERE3azmxUAUI4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Baptiste", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 56, email: "morgana@morgana", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAPM4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Morgan", last_name: "A", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 57, email: "charlesp@charlesp", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Charles", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 58, email: "mickaelm@mickaelm", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RTRazmxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mickael", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 59, email: "johang@johang", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jPORE3azmxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Johan", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 60, email: "anthonyl@anthonyl", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jRERE767mxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Anthony", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 61, email: "thomasm@thomasm", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW63EERE3azmxUAUI4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 62, email: "benjamint@benjamint", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3az098APM4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Benjamin", last_name: "T", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 63, email: "christopherb@christopherb", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxPMERZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Christopher", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 64, email: "renanc@renanc", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RTRaPMLUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Renan", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 65, email: "quentinp@quentinp", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9MPOORE3amxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Quentin", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 66, email: "mathieub@mathieub", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4REPNRxPMERZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mathieu", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 67, email: "potemathieub@potemathieub", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RTRaPMLUPMLZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Pote Mathieu", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!

    user = User.new({id: 68, email: "abrahamo@abrahamo", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNBF3OORE3amxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Abraham", last_name: "O", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
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
      {id: 9, date: "2017-04-18 18:30:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 14, score_outside: 13, video_link: "", match_resume_link: "", created_at: "2017-04-18 08:22:20", updated_at: "2017-04-18 08:22:20"},
      {id: 10, date: "2017-04-20 20:00:00", duration: 60, futsal_field_id: 2, team_home_id: 5, team_outside_id: 6, score_home: 2, score_outside: 0, video_link: "", match_resume_link: "", created_at: "2017-04-22 12:48:53", updated_at: "2017-04-22 12:48:53"},
      {id: 11, date: "2017-04-23 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 22, score_outside: 20, video_link: "https://www.youtube.com/embed/tHVOKW9ICZs", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1722943&matchs_id=112346", created_at: "2017-04-23 19:36:53", updated_at: "2017-04-24 13:16:50"},
      {id: 12, date: "2017-04-24 18:30:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 14, score_outside: 19, video_link: "https://www.youtube.com/embed/yZ00tgJpnB4", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1723646&matchs_id=112413", created_at: "2017-04-24 20:04:35", updated_at: "2017-04-25 07:01:03"},
      {id: 13, date: "2017-04-26 20:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 13, score_outside: 20, video_link: "https://www.youtube.com/embed/03WTex22jrc", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1732133&matchs_id=112873", created_at: "2017-04-27 06:54:27", updated_at: "2017-04-27 11:20:49"},
      {id: 14, date: "2017-05-01 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 19, score_outside: 15, video_link: "https://www.youtube.com/embed/fszTUtofw34", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1749598&matchs_id=114124", created_at: "2017-05-02 06:50:42", updated_at: "2017-05-02 10:32:28"},
      {id: 15, date: "2017-05-02 18:30:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 14, score_outside: 18, video_link: "", match_resume_link: "", created_at: "2017-05-04 06:42:15", updated_at: "2017-05-04 06:42:15"},
      {id: 16, date: "2017-05-03 20:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 11, score_outside: 20, video_link: "https://www.youtube.com/embed/cO8AgamKSbc", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1756761&matchs_id=114455", created_at: "2017-05-04 06:44:34", updated_at: "2017-05-04 10:41:55"},
      {id: 17, date: "2017-05-08 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 17, score_outside: 19, video_link: "https://www.youtube.com/embed/GshOoyYthnU", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1775641&matchs_id=115804", created_at: "2017-05-09 06:47:34", updated_at: "2017-05-09 22:03:18"},
      {id: 18, date: "2017-05-09 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 1, team_outside_id: 2, score_home: 11, score_outside: 21, video_link: "https://www.youtube.com/embed/afvMdY3sKMk", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1778329&matchs_id=115903", created_at: "2017-05-10 06:32:16", updated_at: "2017-05-10 06:39:59"},
      {id: 19, date: "2017-05-10 20:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 19, score_outside: 22, video_link: "https://www.youtube.com/embed/TLy9Okky_sI", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1782693&matchs_id=116117", created_at: "2017-05-11 06:43:43", updated_at: "2017-05-11 16:42:18"},
      {id: 20, date: "2017-05-13 11:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 21, score_outside: 15, video_link: "https://www.youtube.com/embed/dzVw5CAjUdo", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1793143&matchs_id=116721", created_at: "2017-05-15 10:46:17", updated_at: "2017-05-15 10:55:02"},
      {id: 21, date: "2017-05-14 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 15, score_outside: 15, video_link: "https://www.youtube.com/embed/wbPb3mUz300", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1800855&matchs_id=117320", created_at: "2017-05-15 10:47:48", updated_at: "2017-05-15 10:55:35"},
      {id: 22, date: "2017-05-16 18:30:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 17, score_outside: 25, video_link: "http://www.dailymotion.com/embed/video/x5mkg93", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1806459&matchs_id=117572", created_at: "2017-05-16 19:51:04", updated_at: "2017-05-17 06:26:20"},
      {id: 23, date: "2017-05-17 19:00:00", duration: 60, futsal_field_id: 1, team_home_id: 3, team_outside_id: 4, score_home: 16, score_outside: 12, video_link: "http://www.dailymotion.com/embed/video/x5mq1d1", match_resume_link: "http://rouen.soccerpark.fr/matchs/detail/index.html?videos_id=1810927&matchs_id=117859", created_at: "2017-05-17 21:08:08", updated_at: "2017-05-18 06:47:22"}
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
      {id: 120, futsal_game_id: 4, team_id: 4, goal_id: 15, assist_id: 1, time: 2015, video_link: "http://www.dailymotion.com/embed/video/x5h3z34?autoPlay=1", created_at: "2017-04-03 10:52:06", updated_at: "2017-04-04 16:04:29"},
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
      {id: 243, futsal_game_id: 8, team_id: 4, goal_id: 40, assist_id: nil, time: 3536, video_link: "http://www.dailymotion.com/embed/video/x5inpau?autoPlay=1", created_at: "2017-04-18 06:42:16", updated_at: "2017-04-18 12:42:46"},
      {id: 244, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: 32, time: 29, video_link: "http://www.dailymotion.com/embed/video/x5jhjso?autoPlay=1", created_at: "2017-04-24 07:55:17", updated_at: "2017-04-24 10:46:10"},
      {id: 245, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 174, video_link: "http://www.dailymotion.com/embed/video/x5jhjvc?autoPlay=1", created_at: "2017-04-24 07:55:17", updated_at: "2017-04-24 10:47:01"},
      {id: 246, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: 32, time: 205, video_link: "http://www.dailymotion.com/embed/video/x5jhjy8?autoPlay=1", created_at: "2017-04-24 07:55:17", updated_at: "2017-04-24 10:47:39"},
      {id: 247, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 278, video_link: "http://www.dailymotion.com/embed/video/x5jhk0x?autoPlay=1", created_at: "2017-04-24 07:55:17", updated_at: "2017-04-24 10:48:45"},
      {id: 248, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: nil, time: 318, video_link: "http://www.dailymotion.com/embed/video/x5jhk4l?autoPlay=1", created_at: "2017-04-24 07:55:18", updated_at: "2017-04-24 10:49:45"},
      {id: 249, futsal_game_id: 11, team_id: 3, goal_id: 11, assist_id: 39, time: 373, video_link: "http://www.dailymotion.com/embed/video/x5jhk8i?autoPlay=1", created_at: "2017-04-24 07:55:18", updated_at: "2017-04-24 11:11:22"},
      {id: 250, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 437, video_link: "http://www.dailymotion.com/embed/video/x5jhkbz?autoPlay=1", created_at: "2017-04-24 07:55:18", updated_at: "2017-04-24 10:51:48"},
      {id: 251, futsal_game_id: 11, team_id: 4, goal_id: 32, assist_id: nil, time: 496, video_link: "http://www.dailymotion.com/embed/video/x5jhkf1?autoPlay=1", created_at: "2017-04-24 07:55:18", updated_at: "2017-04-24 10:53:10"},
      {id: 252, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: 14, time: 660, video_link: "http://www.dailymotion.com/embed/video/x5jhkhk?autoPlay=1", created_at: "2017-04-24 07:55:18", updated_at: "2017-04-24 11:04:31"},
      {id: 253, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: nil, time: 865, video_link: "http://www.dailymotion.com/embed/video/x5jhkkn?autoPlay=1", created_at: "2017-04-24 07:55:18", updated_at: "2017-04-24 11:06:15"},
      {id: 254, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: nil, time: 1135, video_link: "http://www.dailymotion.com/embed/video/x5jhknk?autoPlay=1", created_at: "2017-04-24 07:55:19", updated_at: "2017-04-24 11:07:09"},
      {id: 255, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: 31, time: 1181, video_link: "http://www.dailymotion.com/embed/video/x5jhkqv?autoPlay=1", created_at: "2017-04-24 07:55:19", updated_at: "2017-04-24 11:09:34"},
      {id: 256, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: 32, time: 1450, video_link: "http://www.dailymotion.com/embed/video/x5jhktu?autoPlay=1", created_at: "2017-04-24 07:55:19", updated_at: "2017-04-24 11:15:30"},
      {id: 257, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: nil, time: 1485, video_link: "http://www.dailymotion.com/embed/video/x5jhkx8?autoPlay=1", created_at: "2017-04-24 07:55:19", updated_at: "2017-04-24 11:21:22"},
      {id: 258, futsal_game_id: 11, team_id: 3, goal_id: 14, assist_id: nil, time: 1542, video_link: "http://www.dailymotion.com/embed/video/x5jhl07?autoPlay=1", created_at: "2017-04-24 07:55:19", updated_at: "2017-04-24 11:22:14"},
      {id: 259, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 1667, video_link: "http://www.dailymotion.com/embed/video/x5jhl2f?autoPlay=1", created_at: "2017-04-24 07:55:19", updated_at: "2017-04-24 11:23:30"},
      {id: 260, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: nil, time: 1756, video_link: "http://www.dailymotion.com/embed/video/x5jhl5g?autoPlay=1", created_at: "2017-04-24 07:55:20", updated_at: "2017-04-24 11:24:52"},
      {id: 261, futsal_game_id: 11, team_id: 3, goal_id: 14, assist_id: 31, time: 1788, video_link: "http://www.dailymotion.com/embed/video/x5jhl93?autoPlay=1", created_at: "2017-04-24 07:55:20", updated_at: "2017-04-24 11:26:17"},
      {id: 262, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: 32, time: 1931, video_link: "http://www.dailymotion.com/embed/video/x5jhlc7?autoPlay=1", created_at: "2017-04-24 07:55:20", updated_at: "2017-04-24 11:27:20"},
      {id: 263, futsal_game_id: 11, team_id: 4, goal_id: 32, assist_id: nil, time: 1979, video_link: "http://www.dailymotion.com/embed/video/x5jhlex?autoPlay=1", created_at: "2017-04-24 07:55:20", updated_at: "2017-04-24 11:28:45"},
      {id: 264, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 2011, video_link: "http://www.dailymotion.com/embed/video/x5jhli7?autoPlay=1", created_at: "2017-04-24 07:55:20", updated_at: "2017-04-24 11:30:11"},
      {id: 265, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: 12, time: 2052, video_link: "http://www.dailymotion.com/embed/video/x5jhllp?autoPlay=1", created_at: "2017-04-24 07:55:20", updated_at: "2017-04-24 11:35:16"},
      {id: 266, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 2079, video_link: "http://www.dailymotion.com/embed/video/x5jhlp7?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 11:36:09"},
      {id: 267, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: nil, time: 2152, video_link: "http://www.dailymotion.com/embed/video/x5jhltq?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 11:38:06"},
      {id: 268, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: 1, time: 2248, video_link: "http://www.dailymotion.com/embed/video/x5jhlwe?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 11:40:11"},
      {id: 269, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 2284, video_link: "http://www.dailymotion.com/embed/video/x5jhlzo?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 11:41:23"},
      {id: 270, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: 16, time: 2335, video_link: "http://www.dailymotion.com/embed/video/x5jhm2l?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 11:43:01"},
      {id: 271, futsal_game_id: 11, team_id: 4, goal_id: 32, assist_id: 1, time: 2360, video_link: "http://www.dailymotion.com/embed/video/x5jhm6s?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 13:17:53"},
      {id: 272, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 2390, video_link: "http://www.dailymotion.com/embed/video/x5jhma2?autoPlay=1", created_at: "2017-04-24 07:55:21", updated_at: "2017-04-24 13:23:05"},
      {id: 273, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: nil, time: 2411, video_link: "http://www.dailymotion.com/embed/video/x5jhmdn?autoPlay=1", created_at: "2017-04-24 07:55:22", updated_at: "2017-04-24 13:26:10"},
      {id: 274, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: nil, time: 2522, video_link: "http://www.dailymotion.com/embed/video/x5jhmhf?autoPlay=1", created_at: "2017-04-24 07:55:22", updated_at: "2017-04-24 11:57:12"},
      {id: 275, futsal_game_id: 11, team_id: 3, goal_id: 14, assist_id: 11, time: 2679, video_link: "http://www.dailymotion.com/embed/video/x5jhmjw?autoPlay=1", created_at: "2017-04-24 07:55:22", updated_at: "2017-04-24 13:56:10"},
      {id: 276, futsal_game_id: 11, team_id: 4, goal_id: 40, assist_id: 32, time: 2704, video_link: "http://www.dailymotion.com/embed/video/x5jhmmr?autoPlay=1", created_at: "2017-04-24 07:55:22", updated_at: "2017-04-24 13:56:17"},
      {id: 277, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 2792, video_link: "http://www.dailymotion.com/embed/video/x5jhmpg?autoPlay=1", created_at: "2017-04-24 07:55:22", updated_at: "2017-04-24 13:31:28"},
      {id: 278, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: 31, time: 2855, video_link: "http://www.dailymotion.com/embed/video/x5jhmsn?autoPlay=1", created_at: "2017-04-24 07:55:22", updated_at: "2017-04-24 13:57:44"},
      {id: 279, futsal_game_id: 11, team_id: 4, goal_id: 32, assist_id: nil, time: 2986, video_link: "http://www.dailymotion.com/embed/video/x5jhmx4?autoPlay=1", created_at: "2017-04-24 07:55:23", updated_at: "2017-04-24 11:44:24"},
      {id: 280, futsal_game_id: 11, team_id: 4, goal_id: 17, assist_id: 40, time: 3154, video_link: "http://www.dailymotion.com/embed/video/x5jhn0s?autoPlay=1", created_at: "2017-04-24 07:55:23", updated_at: "2017-04-24 11:45:57"},
      {id: 281, futsal_game_id: 11, team_id: 3, goal_id: 12, assist_id: nil, time: 3325, video_link: "http://www.dailymotion.com/embed/video/x5jhn3m?autoPlay=1", created_at: "2017-04-24 07:55:23", updated_at: "2017-04-24 11:46:53"},
      {id: 282, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: 32, time: 3410, video_link: "http://www.dailymotion.com/embed/video/x5jhn6h?autoPlay=1", created_at: "2017-04-24 07:55:23", updated_at: "2017-04-24 11:47:38"},
      {id: 283, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: nil, time: 3453, video_link: "http://www.dailymotion.com/embed/video/x5jhn9k?autoPlay=1", created_at: "2017-04-24 07:55:23", updated_at: "2017-04-24 11:48:31"},
      {id: 284, futsal_game_id: 11, team_id: 4, goal_id: 1, assist_id: 17, time: 3490, video_link: "http://www.dailymotion.com/embed/video/x5jhnds?autoPlay=1", created_at: "2017-04-24 07:55:23", updated_at: "2017-04-24 11:49:20"},
      {id: 285, futsal_game_id: 11, team_id: 3, goal_id: 39, assist_id: 12, time: 3586, video_link: "", created_at: "2017-04-24 15:19:51", updated_at: "2017-04-24 15:21:32"},
      {id: 286, futsal_game_id: 12, team_id: 1, goal_id: 36, assist_id: 7, time: 155, video_link: "http://www.dailymotion.com/embed/video/x5jjuky?autoPlay=1", created_at: "2017-04-25 06:50:37", updated_at: "2017-04-25 10:50:21"},
      {id: 287, futsal_game_id: 12, team_id: 1, goal_id: 36, assist_id: 4, time: 235, video_link: "http://www.dailymotion.com/embed/video/x5jjusm?autoPlay=1", created_at: "2017-04-25 06:50:37", updated_at: "2017-04-25 10:53:04"},
      {id: 288, futsal_game_id: 12, team_id: 1, goal_id: 4, assist_id: nil, time: 559, video_link: "http://www.dailymotion.com/embed/video/x5jjuxq?autoPlay=1", created_at: "2017-04-25 06:50:37", updated_at: "2017-04-25 10:54:56"},
      {id: 289, futsal_game_id: 12, team_id: 1, goal_id: 36, assist_id: 4, time: 634, video_link: "http://www.dailymotion.com/embed/video/x5jjv75?autoPlay=1", created_at: "2017-04-25 06:50:38", updated_at: "2017-04-25 10:56:41"},
      {id: 290, futsal_game_id: 12, team_id: 2, goal_id: 50, assist_id: nil, time: 726, video_link: "http://www.dailymotion.com/embed/video/x5jjvcn?autoPlay=1", created_at: "2017-04-25 06:50:38", updated_at: "2017-04-25 10:58:19"},
      {id: 291, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: nil, time: 988, video_link: "http://www.dailymotion.com/embed/video/x5jjvhg?autoPlay=1", created_at: "2017-04-25 06:50:38", updated_at: "2017-04-25 11:14:49"},
      {id: 292, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: nil, time: 1070, video_link: "http://www.dailymotion.com/embed/video/x5jjvn8?autoPlay=1", created_at: "2017-04-25 06:50:38", updated_at: "2017-04-25 11:16:32"},
      {id: 293, futsal_game_id: 12, team_id: 1, goal_id: 36, assist_id: nil, time: 1126, video_link: "http://www.dailymotion.com/embed/video/x5jjvsj?autoPlay=1", created_at: "2017-04-25 06:50:38", updated_at: "2017-04-25 11:23:17"},
      {id: 294, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 50, time: 1172, video_link: "http://www.dailymotion.com/embed/video/x5jjvxe?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:05:30"},
      {id: 295, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: nil, time: 1221, video_link: "http://www.dailymotion.com/embed/video/x5jjw43?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:01:00"},
      {id: 296, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 1, time: 1327, video_link: "http://www.dailymotion.com/embed/video/x5jjw8q?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:03:14"},
      {id: 297, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 1, time: 1510, video_link: "http://www.dailymotion.com/embed/video/x5jjwe0?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:07:42"},
      {id: 298, futsal_game_id: 12, team_id: 1, goal_id: 9, assist_id: 36, time: 1556, video_link: "http://www.dailymotion.com/embed/video/x5jjwjl?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:08:35"},
      {id: 299, futsal_game_id: 12, team_id: 1, goal_id: 36, assist_id: 9, time: 1651, video_link: "http://www.dailymotion.com/embed/video/x5jjwpa?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:10:09"},
      {id: 300, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 50, time: 1685, video_link: "http://www.dailymotion.com/embed/video/x5jjwu9?autoPlay=1", created_at: "2017-04-25 06:50:39", updated_at: "2017-04-25 11:11:29"},
      {id: 301, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: nil, time: 1848, video_link: "http://www.dailymotion.com/embed/video/x5jjwz7?autoPlay=1", created_at: "2017-04-25 06:50:40", updated_at: "2017-04-25 11:13:21"},
      {id: 302, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: nil, time: 2002, video_link: "http://www.dailymotion.com/embed/video/x5jjx5e?autoPlay=1", created_at: "2017-04-25 06:50:40", updated_at: "2017-04-25 11:25:08"},
      {id: 303, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: 49, time: 2094, video_link: "http://www.dailymotion.com/embed/video/x5jjxbw?autoPlay=1", created_at: "2017-04-25 06:50:40", updated_at: "2017-04-25 11:27:20"},
      {id: 304, futsal_game_id: 12, team_id: 1, goal_id: 4, assist_id: 36, time: 2274, video_link: "http://www.dailymotion.com/embed/video/x5jjxif?autoPlay=1", created_at: "2017-04-25 06:50:40", updated_at: "2017-04-25 11:28:49"},
      {id: 305, futsal_game_id: 12, team_id: 1, goal_id: 4, assist_id: 36, time: 2326, video_link: "http://www.dailymotion.com/embed/video/x5jjxoh?autoPlay=1", created_at: "2017-04-25 06:50:40", updated_at: "2017-04-25 11:31:08"},
      {id: 306, futsal_game_id: 12, team_id: 1, goal_id: 4, assist_id: 36, time: 2352, video_link: "http://www.dailymotion.com/embed/video/x5jjxwx?autoPlay=1", created_at: "2017-04-25 06:50:40", updated_at: "2017-04-25 11:32:02"},
      {id: 307, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 1, time: 2432, video_link: "http://www.dailymotion.com/embed/video/x5jjy3n?autoPlay=1", created_at: "2017-04-25 06:50:41", updated_at: "2017-04-25 11:35:00"},
      {id: 308, futsal_game_id: 12, team_id: 1, goal_id: 36, assist_id: nil, time: 2577, video_link: "http://www.dailymotion.com/embed/video/x5jjy9q?autoPlay=1", created_at: "2017-04-25 06:50:41", updated_at: "2017-04-25 11:37:37"},
      {id: 309, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: nil, time: 2632, video_link: "http://www.dailymotion.com/embed/video/x5jjygk?autoPlay=1", created_at: "2017-04-25 06:50:41", updated_at: "2017-04-25 14:36:38"},
      {id: 310, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: nil, time: 2888, video_link: "http://www.dailymotion.com/embed/video/x5jjyno?autoPlay=1", created_at: "2017-04-25 06:50:41", updated_at: "2017-04-25 14:38:49"},
      {id: 311, futsal_game_id: 12, team_id: 1, goal_id: 4, assist_id: nil, time: 2929, video_link: "http://www.dailymotion.com/embed/video/x5jjyvm?autoPlay=1", created_at: "2017-04-25 06:50:41", updated_at: "2017-04-25 14:40:10"},
      {id: 312, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: nil, time: 2986, video_link: "http://www.dailymotion.com/embed/video/x5jjz3h?autoPlay=1", created_at: "2017-04-25 06:50:41", updated_at: "2017-04-25 14:41:27"},
      {id: 313, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: nil, time: 3021, video_link: "http://www.dailymotion.com/embed/video/x5jjze3?autoPlay=1", created_at: "2017-04-25 06:50:42", updated_at: "2017-04-25 14:42:39"},
      {id: 314, futsal_game_id: 12, team_id: 1, goal_id: 8, assist_id: 4, time: 3048, video_link: "http://www.dailymotion.com/embed/video/x5jjzn1?autoPlay=1", created_at: "2017-04-25 06:50:42", updated_at: "2017-04-25 14:56:00"},
      {id: 315, futsal_game_id: 12, team_id: 1, goal_id: 12, assist_id: 9, time: 3171, video_link: "http://www.dailymotion.com/embed/video/x5jjzu1?autoPlay=1", created_at: "2017-04-25 06:50:42", updated_at: "2017-04-25 14:56:47"},
      {id: 316, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 50, time: 3315, video_link: "http://www.dailymotion.com/embed/video/x5jk013?autoPlay=1", created_at: "2017-04-25 06:50:42", updated_at: "2017-04-25 07:01:42"},
      {id: 317, futsal_game_id: 12, team_id: 2, goal_id: 40, assist_id: 49, time: 3377, video_link: "http://www.dailymotion.com/embed/video/x5jk089?autoPlay=1", created_at: "2017-04-25 06:50:42", updated_at: "2017-04-25 07:02:29"},
      {id: 318, futsal_game_id: 12, team_id: 2, goal_id: 1, assist_id: 49, time: 3440, video_link: "http://www.dailymotion.com/embed/video/x5jk0eo?autoPlay=1", created_at: "2017-04-25 06:50:42", updated_at: "2017-04-25 07:03:02"},
      {id: 319, futsal_game_id: 13, team_id: 4, goal_id: 4, assist_id: 51, time: 236, video_link: "http://www.dailymotion.com/embed/video/x5juxoy?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:47:08"},
      {id: 320, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: 32, time: 278, video_link: "http://www.dailymotion.com/embed/video/x5juxwt?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:48:11"},
      {id: 321, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: nil, time: 626, video_link: "http://www.dailymotion.com/embed/video/x5juy5g?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:48:41"},
      {id: 322, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: nil, time: 786, video_link: "http://www.dailymotion.com/embed/video/x5juye1?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:49:29"},
      {id: 323, futsal_game_id: 13, team_id: 4, goal_id: 4, assist_id: 21, time: 901, video_link: "http://www.dailymotion.com/embed/video/x5juylt?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:21:53"},
      {id: 324, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: nil, time: 947, video_link: "http://www.dailymotion.com/embed/video/x5juytc?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:23:15"},
      {id: 325, futsal_game_id: 13, team_id: 4, goal_id: 21, assist_id: nil, time: 1037, video_link: "http://www.dailymotion.com/embed/video/x5juz2c?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 06:54:52"},
      {id: 326, futsal_game_id: 13, team_id: 3, goal_id: nil, assist_id: nil, time: 1104, video_link: "http://www.dailymotion.com/embed/video/x5juz9n?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 06:54:52"},
      {id: 327, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: 32, time: 1173, video_link: "http://www.dailymotion.com/embed/video/x5juzf7?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:25:52"},
      {id: 328, futsal_game_id: 13, team_id: 3, goal_id: 32, assist_id: nil, time: 1239, video_link: "http://www.dailymotion.com/embed/video/x5juzmd?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:26:36"},
      {id: 329, futsal_game_id: 13, team_id: 4, goal_id: 4, assist_id: nil, time: 1424, video_link: "http://www.dailymotion.com/embed/video/x5juzs5?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:27:21"},
      {id: 330, futsal_game_id: 13, team_id: 4, goal_id: 43, assist_id: 1, time: 1471, video_link: "http://www.dailymotion.com/embed/video/x5juzyb?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:27:49"},
      {id: 331, futsal_game_id: 13, team_id: 4, goal_id: 43, assist_id: 21, time: 1517, video_link: "http://www.dailymotion.com/embed/video/x5jv038?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:28:43"},
      {id: 332, futsal_game_id: 13, team_id: 3, goal_id: 42, assist_id: nil, time: 1615, video_link: "http://www.dailymotion.com/embed/video/x5jv08n?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:29:20"},
      {id: 333, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: 21, time: 1718, video_link: "http://www.dailymotion.com/embed/video/x5jv0ds?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:50:11"},
      {id: 334, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: 42, time: 1796, video_link: "http://www.dailymotion.com/embed/video/x5jv0k0?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:51:04"},
      {id: 335, futsal_game_id: 13, team_id: 4, goal_id: 1, assist_id: 4, time: 1882, video_link: "http://www.dailymotion.com/embed/video/x5jv0ra?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:51:32"},
      {id: 336, futsal_game_id: 13, team_id: 4, goal_id: 1, assist_id: 4, time: 2101, video_link: "http://www.dailymotion.com/embed/video/x5jv0z5?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:53:59"},
      {id: 337, futsal_game_id: 13, team_id: 4, goal_id: 1, assist_id: 21, time: 2164, video_link: "http://www.dailymotion.com/embed/video/x5jv15q?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:07:08"},
      {id: 338, futsal_game_id: 13, team_id: 3, goal_id: 32, assist_id: nil, time: 2199, video_link: "http://www.dailymotion.com/embed/video/x5jv1bp?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:56:50"},
      {id: 339, futsal_game_id: 13, team_id: 3, goal_id: 52, assist_id: nil, time: 2324, video_link: "http://www.dailymotion.com/embed/video/x5jv1ig?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:57:45"},
      {id: 340, futsal_game_id: 13, team_id: 4, goal_id: 4, assist_id: 21, time: 2554, video_link: "http://www.dailymotion.com/embed/video/x5jv1o3?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:58:31"},
      {id: 341, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: nil, time: 2597, video_link: "http://www.dailymotion.com/embed/video/x5jv1t6?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:58:59"},
      {id: 342, futsal_game_id: 13, team_id: 4, goal_id: 4, assist_id: 21, time: 2808, video_link: "http://www.dailymotion.com/embed/video/x5jv20l?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 10:59:40"},
      {id: 343, futsal_game_id: 13, team_id: 3, goal_id: 32, assist_id: 35, time: 2851, video_link: "http://www.dailymotion.com/embed/video/x5jv27s?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:00:47"},
      {id: 344, futsal_game_id: 13, team_id: 4, goal_id: 1, assist_id: 51, time: 2950, video_link: "http://www.dailymotion.com/embed/video/x5jv2fm?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:02:03"},
      {id: 345, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: nil, time: 3049, video_link: "http://www.dailymotion.com/embed/video/x5jv2lt?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:02:58"},
      {id: 346, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: 32, time: 3080, video_link: "http://www.dailymotion.com/embed/video/x5jv2qw?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:04:21"},
      {id: 347, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: nil, time: 3255, video_link: "http://www.dailymotion.com/embed/video/x5jv2w8?autoPlay=1", created_at: "2017-04-27 06:54:52", updated_at: "2017-04-27 11:04:46"},
      {id: 348, futsal_game_id: 13, team_id: 4, goal_id: 51, assist_id: 1, time: 3279, video_link: "http://www.dailymotion.com/embed/video/x5jv32o?autoPlay=1", created_at: "2017-04-27 06:54:53", updated_at: "2017-04-27 11:05:46"},
      {id: 349, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: nil, time: 3311, video_link: "http://www.dailymotion.com/embed/video/x5jv38r?autoPlay=1", created_at: "2017-04-27 06:54:53", updated_at: "2017-04-27 11:07:45"},
      {id: 350, futsal_game_id: 13, team_id: 3, goal_id: 35, assist_id: 53, time: 3562, video_link: "", created_at: "2017-04-27 11:15:07", updated_at: "2017-04-27 11:16:03"},
      {id: 351, futsal_game_id: 13, team_id: 4, goal_id: 21, assist_id: nil, time: 3590, video_link: "", created_at: "2017-04-27 11:18:34", updated_at: "2017-04-27 11:18:34"},
      {id: 352, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 23, video_link: "http://www.dailymotion.com/embed/video/x5kggj5?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:34:16"},
      {id: 353, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 83, video_link: "http://www.dailymotion.com/embed/video/x5kggqy?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:34:40"},
      {id: 354, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 327, video_link: "http://www.dailymotion.com/embed/video/x5kggyr?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:35:55"},
      {id: 355, futsal_game_id: 14, team_id: 4, goal_id: 32, assist_id: nil, time: 495, video_link: "http://www.dailymotion.com/embed/video/x5kgh6p?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:36:18"},
      {id: 356, futsal_game_id: 14, team_id: 3, goal_id: 39, assist_id: 4, time: 517, video_link: "http://www.dailymotion.com/embed/video/x5kghe3?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:36:42"},
      {id: 357, futsal_game_id: 14, team_id: 4, goal_id: 32, assist_id: 11, time: 630, video_link: "http://www.dailymotion.com/embed/video/x5kghm0?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:37:52"},
      {id: 358, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 672, video_link: "http://www.dailymotion.com/embed/video/x5kghsy?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:38:40"},
      {id: 359, futsal_game_id: 14, team_id: 4, goal_id: 11, assist_id: nil, time: 710, video_link: "http://www.dailymotion.com/embed/video/x5kghzx?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:39:15"},
      {id: 360, futsal_game_id: 14, team_id: 3, goal_id: 4, assist_id: nil, time: 727, video_link: "http://www.dailymotion.com/embed/video/x5kgi76?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:39:35"},
      {id: 361, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 825, video_link: "http://www.dailymotion.com/embed/video/x5kgidg?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:39:56"},
      {id: 362, futsal_game_id: 14, team_id: 4, goal_id: 16, assist_id: 31, time: 856, video_link: "http://www.dailymotion.com/embed/video/x5kgiks?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:40:34"},
      {id: 363, futsal_game_id: 14, team_id: 4, goal_id: 16, assist_id: nil, time: 958, video_link: "http://www.dailymotion.com/embed/video/x5kgitu?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:41:13"},
      {id: 364, futsal_game_id: 14, team_id: 4, goal_id: 32, assist_id: nil, time: 1016, video_link: "http://www.dailymotion.com/embed/video/x5kgj1n?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:41:37"},
      {id: 365, futsal_game_id: 14, team_id: 3, goal_id: 39, assist_id: 4, time: 1074, video_link: "http://www.dailymotion.com/embed/video/x5kgj9v?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:42:25"},
      {id: 366, futsal_game_id: 14, team_id: 4, goal_id: 14, assist_id: 11, time: 1193, video_link: "http://www.dailymotion.com/embed/video/x5kgjhr?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:42:59"},
      {id: 367, futsal_game_id: 14, team_id: 3, goal_id: 17, assist_id: 1, time: 1413, video_link: "http://www.dailymotion.com/embed/video/x5kgjqw?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:45:24"},
      {id: 368, futsal_game_id: 14, team_id: 4, goal_id: 14, assist_id: 32, time: 1536, video_link: "http://www.dailymotion.com/embed/video/x5kgk0o?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:44:57"},
      {id: 369, futsal_game_id: 14, team_id: 3, goal_id: 39, assist_id: nil, time: 1807, video_link: "http://www.dailymotion.com/embed/video/x5kgkaj?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:45:45"},
      {id: 370, futsal_game_id: 14, team_id: 4, goal_id: 31, assist_id: 14, time: 1959, video_link: "http://www.dailymotion.com/embed/video/x5kgkjb?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:46:52"},
      {id: 371, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 2019, video_link: "http://www.dailymotion.com/embed/video/x5kgkq5?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:47:38"},
      {id: 372, futsal_game_id: 14, team_id: 4, goal_id: 32, assist_id: 14, time: 2103, video_link: "http://www.dailymotion.com/embed/video/x5kgkw7?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:48:38"},
      {id: 373, futsal_game_id: 14, team_id: 4, goal_id: nil, assist_id: nil, time: 2242, video_link: "http://www.dailymotion.com/embed/video/x5kgl3o?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:49:28"},
      {id: 374, futsal_game_id: 14, team_id: 4, goal_id: 16, assist_id: 11, time: 2326, video_link: "http://www.dailymotion.com/embed/video/x5kglbw?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:50:41"},
      {id: 375, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 2351, video_link: "http://www.dailymotion.com/embed/video/x5kglkl?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:51:15"},
      {id: 376, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 2376, video_link: "http://www.dailymotion.com/embed/video/x5kglu5?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:51:59"},
      {id: 377, futsal_game_id: 14, team_id: 4, goal_id: 31, assist_id: 32, time: 2635, video_link: "http://www.dailymotion.com/embed/video/x5kgm3d?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:52:51"},
      {id: 378, futsal_game_id: 14, team_id: 3, goal_id: 1, assist_id: 12, time: 2658, video_link: "http://www.dailymotion.com/embed/video/x5kgmah?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:53:51"},
      {id: 379, futsal_game_id: 14, team_id: 3, goal_id: 1, assist_id: 12, time: 2732, video_link: "http://www.dailymotion.com/embed/video/x5kgmhc?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:54:35"},
      {id: 380, futsal_game_id: 14, team_id: 3, goal_id: 39, assist_id: nil, time: 2860, video_link: "http://www.dailymotion.com/embed/video/x5kgmp0?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:55:08"},
      {id: 381, futsal_game_id: 14, team_id: 4, goal_id: 31, assist_id: 16, time: 3031, video_link: "http://www.dailymotion.com/embed/video/x5kgmwr?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:56:02"},
      {id: 382, futsal_game_id: 14, team_id: 3, goal_id: 39, assist_id: 4, time: 3148, video_link: "http://www.dailymotion.com/embed/video/x5kgn5h?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:56:32"},
      {id: 383, futsal_game_id: 14, team_id: 4, goal_id: 14, assist_id: 31, time: 3397, video_link: "http://www.dailymotion.com/embed/video/x5kgndk?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:57:31"},
      {id: 384, futsal_game_id: 14, team_id: 3, goal_id: 12, assist_id: nil, time: 3522, video_link: "http://www.dailymotion.com/embed/video/x5kgnrp?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:57:59"},
      {id: 385, futsal_game_id: 14, team_id: 3, goal_id: 39, assist_id: nil, time: 3565, video_link: "http://www.dailymotion.com/embed/video/x5kgnzh?autoPlay=1", created_at: "2017-05-02 06:51:01", updated_at: "2017-05-02 10:58:23"},
      {id: 386, futsal_game_id: 16, team_id: 4, goal_id: 1, assist_id: 21, time: 62, video_link: "http://www.dailymotion.com/embed/video/x5krdr8?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 10:56:27"},
      {id: 387, futsal_game_id: 16, team_id: 3, goal_id: 40, assist_id: nil, time: 111, video_link: "http://www.dailymotion.com/embed/video/x5krdu6?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 10:57:15"},
      {id: 388, futsal_game_id: 16, team_id: 3, goal_id: 51, assist_id: nil, time: 143, video_link: "http://www.dailymotion.com/embed/video/x5krdy3?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 10:57:59"},
      {id: 389, futsal_game_id: 16, team_id: 4, goal_id: 1, assist_id: nil, time: 528, video_link: "http://www.dailymotion.com/embed/video/x5kre1j?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 10:58:23"},
      {id: 390, futsal_game_id: 16, team_id: 4, goal_id: 4, assist_id: 43, time: 560, video_link: "http://www.dailymotion.com/embed/video/x5kre4t?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 10:59:55"},
      {id: 391, futsal_game_id: 16, team_id: 4, goal_id: 36, assist_id: 4, time: 698, video_link: "http://www.dailymotion.com/embed/video/x5kre78?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:00:37"},
      {id: 392, futsal_game_id: 16, team_id: 4, goal_id: 36, assist_id: nil, time: 761, video_link: "http://www.dailymotion.com/embed/video/x5kre9a?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:01:18"},
      {id: 393, futsal_game_id: 16, team_id: 3, goal_id: 17, assist_id: nil, time: 830, video_link: "http://www.dailymotion.com/embed/video/x5krec4?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:02:37"},
      {id: 394, futsal_game_id: 16, team_id: 4, goal_id: 4, assist_id: nil, time: 954, video_link: "http://www.dailymotion.com/embed/video/x5kref5?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:03:43"},
      {id: 395, futsal_game_id: 16, team_id: 4, goal_id: 1, assist_id: nil, time: 1638, video_link: "http://www.dailymotion.com/embed/video/x5kreib?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:04:33"},
      {id: 396, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: nil, time: 1716, video_link: "http://www.dailymotion.com/embed/video/x5krem4?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:05:17"},
      {id: 397, futsal_game_id: 16, team_id: 3, goal_id: 56, assist_id: 55, time: 2409, video_link: "http://www.dailymotion.com/embed/video/x5krepq?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:06:31"},
      {id: 398, futsal_game_id: 16, team_id: 4, goal_id: 1, assist_id: 21, time: 2464, video_link: "http://www.dailymotion.com/embed/video/x5kreu6?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:07:41"},
      {id: 399, futsal_game_id: 16, team_id: 4, goal_id: 1, assist_id: 21, time: 2502, video_link: "http://www.dailymotion.com/embed/video/x5krey8?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:09:08"},
      {id: 400, futsal_game_id: 16, team_id: 3, goal_id: 17, assist_id: 55, time: 2624, video_link: "http://www.dailymotion.com/embed/video/x5krf2z?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:10:19"},
      {id: 401, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: 4, time: 2750, video_link: "http://www.dailymotion.com/embed/video/x5krf6l?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:12:05"},
      {id: 402, futsal_game_id: 16, team_id: 4, goal_id: 4, assist_id: 36, time: 2792, video_link: "http://www.dailymotion.com/embed/video/x5krf9q?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:14:29"},
      {id: 403, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: nil, time: 2855, video_link: "http://www.dailymotion.com/embed/video/x5krfd1?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:14:55"},
      {id: 404, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: 36, time: 2907, video_link: "http://www.dailymotion.com/embed/video/x5krfgr?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:16:08"},
      {id: 405, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: nil, time: 2929, video_link: "http://www.dailymotion.com/embed/video/x5krflf?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:19:46"},
      {id: 406, futsal_game_id: 16, team_id: 4, goal_id: 36, assist_id: nil, time: 2961, video_link: "http://www.dailymotion.com/embed/video/x5krfpd?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:20:32"},
      {id: 407, futsal_game_id: 16, team_id: 4, goal_id: 36, assist_id: 1, time: 3006, video_link: "http://www.dailymotion.com/embed/video/x5krfte?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:21:42"},
      {id: 408, futsal_game_id: 16, team_id: 3, goal_id: 17, assist_id: nil, time: 3133, video_link: "http://www.dailymotion.com/embed/video/x5krfx0?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:22:35"},
      {id: 409, futsal_game_id: 16, team_id: 4, goal_id: 4, assist_id: 36, time: 3174, video_link: "http://www.dailymotion.com/embed/video/x5krg0j?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:23:24"},
      {id: 410, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: 1, time: 3209, video_link: "http://www.dailymotion.com/embed/video/x5krg3r?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:23:58"},
      {id: 411, futsal_game_id: 16, team_id: 3, goal_id: 40, assist_id: nil, time: 3229, video_link: "http://www.dailymotion.com/embed/video/x5krg85?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:32:27"},
      {id: 412, futsal_game_id: 16, team_id: 3, goal_id: 17, assist_id: nil, time: 3300, video_link: "http://www.dailymotion.com/embed/video/x5krgcz?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:25:28"},
      {id: 413, futsal_game_id: 16, team_id: 3, goal_id: 17, assist_id: 21, time: 3397, video_link: "http://www.dailymotion.com/embed/video/x5krghn?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:26:47"},
      {id: 414, futsal_game_id: 16, team_id: 3, goal_id: 40, assist_id: nil, time: 3483, video_link: "http://www.dailymotion.com/embed/video/x5krgls?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:32:18"},
      {id: 415, futsal_game_id: 16, team_id: 4, goal_id: 43, assist_id: 4, time: 3513, video_link: "http://www.dailymotion.com/embed/video/x5krgpy?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:28:44"},
      {id: 416, futsal_game_id: 16, team_id: 3, goal_id: 21, assist_id: 40, time: 3580, video_link: "http://www.dailymotion.com/embed/video/x5krgt9?autoPlay=1", created_at: "2017-05-04 06:45:02", updated_at: "2017-05-04 11:31:03"},
      {id: 417, futsal_game_id: 17, team_id: 4, goal_id: 1, assist_id: nil, time: 210, video_link: "http://www.dailymotion.com/embed/video/x5lkfai?autoPlay=1", created_at: "2017-05-09 21:20:51", updated_at: "2017-05-09 21:27:24"},
      {id: 418, futsal_game_id: 17, team_id: 4, goal_id: 39, assist_id: 1, time: 342, video_link: "http://www.dailymotion.com/embed/video/x5lkfei?autoPlay=1", created_at: "2017-05-09 21:20:51", updated_at: "2017-05-09 21:29:46"},
      {id: 419, futsal_game_id: 17, team_id: 3, goal_id: 32, assist_id: 17, time: 386, video_link: "http://www.dailymotion.com/embed/video/x5lkfit?autoPlay=1", created_at: "2017-05-09 21:20:51", updated_at: "2017-05-09 21:31:25"},
      {id: 420, futsal_game_id: 17, team_id: 4, goal_id: 15, assist_id: nil, time: 440, video_link: "http://www.dailymotion.com/embed/video/x5lkfm8?autoPlay=1", created_at: "2017-05-09 21:20:51", updated_at: "2017-05-09 21:32:26"},
      {id: 421, futsal_game_id: 17, team_id: 4, goal_id: 1, assist_id: nil, time: 568, video_link: "http://www.dailymotion.com/embed/video/x5lkfq1?autoPlay=1", created_at: "2017-05-09 21:20:52", updated_at: "2017-05-09 21:33:23"},
      {id: 422, futsal_game_id: 17, team_id: 3, goal_id: 32, assist_id: nil, time: 715, video_link: "http://www.dailymotion.com/embed/video/x5lkfu7?autoPlay=1", created_at: "2017-05-09 21:20:52", updated_at: "2017-05-09 21:35:57"},
      {id: 423, futsal_game_id: 17, team_id: 4, goal_id: 39, assist_id: 16, time: 887, video_link: "http://www.dailymotion.com/embed/video/x5lkfxb?autoPlay=1", created_at: "2017-05-09 21:20:52", updated_at: "2017-05-09 21:38:28"},
      {id: 424, futsal_game_id: 17, team_id: 3, goal_id: 31, assist_id: nil, time: 936, video_link: "http://www.dailymotion.com/embed/video/x5lkg0y?autoPlay=1", created_at: "2017-05-09 21:20:53", updated_at: "2017-05-09 21:39:36"},
      {id: 425, futsal_game_id: 17, team_id: 4, goal_id: 39, assist_id: 11, time: 1137, video_link: "http://www.dailymotion.com/embed/video/x5lkg5c?autoPlay=1", created_at: "2017-05-09 21:20:53", updated_at: "2017-05-09 21:40:50"},
      {id: 426, futsal_game_id: 17, team_id: 4, goal_id: 15, assist_id: nil, time: 1186, video_link: "http://www.dailymotion.com/embed/video/x5lkg7x?autoPlay=1", created_at: "2017-05-09 21:20:53", updated_at: "2017-05-09 21:41:40"},
      {id: 427, futsal_game_id: 17, team_id: 4, goal_id: 11, assist_id: 39, time: 1219, video_link: "http://www.dailymotion.com/embed/video/x5lkgbc?autoPlay=1", created_at: "2017-05-09 21:20:53", updated_at: "2017-05-09 21:43:30"},
      {id: 428, futsal_game_id: 17, team_id: 3, goal_id: 17, assist_id: nil, time: 1356, video_link: "http://www.dailymotion.com/embed/video/x5lkgeq?autoPlay=1", created_at: "2017-05-09 21:20:54", updated_at: "2017-05-09 21:46:48"},
      {id: 429, futsal_game_id: 17, team_id: 3, goal_id: 32, assist_id: nil, time: 1399, video_link: "http://www.dailymotion.com/embed/video/x5lkgii?autoPlay=1", created_at: "2017-05-09 21:20:54", updated_at: "2017-05-09 21:48:42"},
      {id: 430, futsal_game_id: 17, team_id: 4, goal_id: 1, assist_id: nil, time: 1629, video_link: "http://www.dailymotion.com/embed/video/x5lkglp?autoPlay=1", created_at: "2017-05-09 21:20:54", updated_at: "2017-05-09 21:49:51"},
      {id: 431, futsal_game_id: 17, team_id: 3, goal_id: 17, assist_id: 32, time: 1653, video_link: "http://www.dailymotion.com/embed/video/x5lkgnt?autoPlay=1", created_at: "2017-05-09 21:20:54", updated_at: "2017-05-09 21:52:21"},
      {id: 432, futsal_game_id: 17, team_id: 3, goal_id: 19, assist_id: 32, time: 2072, video_link: "http://www.dailymotion.com/embed/video/x5lkgr9?autoPlay=1", created_at: "2017-05-09 21:20:54", updated_at: "2017-05-09 21:58:41"},
      {id: 433, futsal_game_id: 17, team_id: 4, goal_id: 39, assist_id: 16, time: 2149, video_link: "http://www.dailymotion.com/embed/video/x5lkguw?autoPlay=1", created_at: "2017-05-09 21:20:54", updated_at: "2017-05-09 21:59:21"},
      {id: 434, futsal_game_id: 17, team_id: 3, goal_id: 19, assist_id: 11, time: 2376, video_link: "http://www.dailymotion.com/embed/video/x5lkgy5?autoPlay=1", created_at: "2017-05-09 21:22:54", updated_at: "2017-05-09 22:04:25"},
      {id: 435, futsal_game_id: 17, team_id: 3, goal_id: 17, assist_id: nil, time: 2542, video_link: "http://www.dailymotion.com/embed/video/x5lkh0y?autoPlay=1", created_at: "2017-05-09 21:22:54", updated_at: "2017-05-09 22:04:53"},
      {id: 436, futsal_game_id: 17, team_id: 4, goal_id: 15, assist_id: nil, time: 2611, video_link: "http://www.dailymotion.com/embed/video/x5lkh44?autoPlay=1", created_at: "2017-05-09 21:22:54", updated_at: "2017-05-09 22:05:46"},
      {id: 437, futsal_game_id: 17, team_id: 3, goal_id: 11, assist_id: 19, time: 2643, video_link: "http://www.dailymotion.com/embed/video/x5lkh6g?autoPlay=1", created_at: "2017-05-09 21:22:54", updated_at: "2017-05-09 22:06:21"},
      {id: 438, futsal_game_id: 17, team_id: 4, goal_id: 39, assist_id: 1, time: 2686, video_link: "http://www.dailymotion.com/embed/video/x5lkhcy?autoPlay=1", created_at: "2017-05-09 21:22:55", updated_at: "2017-05-09 22:31:27"},
      {id: 439, futsal_game_id: 17, team_id: 4, goal_id: 39, assist_id: 1, time: 2811, video_link: "http://www.dailymotion.com/embed/video/x5lkhh5?autoPlay=1", created_at: "2017-05-09 21:22:55", updated_at: "2017-05-09 22:12:20"},
      {id: 440, futsal_game_id: 17, team_id: 3, goal_id: 19, assist_id: 14, time: 2899, video_link: "http://www.dailymotion.com/embed/video/x5lkhl6?autoPlay=1", created_at: "2017-05-09 21:22:55", updated_at: "2017-05-09 22:13:31"},
      {id: 441, futsal_game_id: 17, team_id: 3, goal_id: 14, assist_id: 11, time: 2974, video_link: "http://www.dailymotion.com/embed/video/x5lkho2?autoPlay=1", created_at: "2017-05-09 21:22:55", updated_at: "2017-05-09 22:14:08"},
      {id: 442, futsal_game_id: 17, team_id: 3, goal_id: 11, assist_id: 31, time: 2999, video_link: "http://www.dailymotion.com/embed/video/x5lkhs1?autoPlay=1", created_at: "2017-05-09 21:22:56", updated_at: "2017-05-09 22:15:22"},
      {id: 443, futsal_game_id: 17, team_id: 4, goal_id: 1, assist_id: nil, time: 3019, video_link: "http://www.dailymotion.com/embed/video/x5lkhvs?autoPlay=1", created_at: "2017-05-09 21:22:56", updated_at: "2017-05-09 22:15:51"},
      {id: 444, futsal_game_id: 17, team_id: 3, goal_id: 31, assist_id: nil, time: 3079, video_link: "http://www.dailymotion.com/embed/video/x5lkhzb?autoPlay=1", created_at: "2017-05-09 21:22:56", updated_at: "2017-05-09 22:16:46"},
      {id: 445, futsal_game_id: 17, team_id: 4, goal_id: 15, assist_id: 39, time: 3132, video_link: "http://www.dailymotion.com/embed/video/x5lki3v?autoPlay=1", created_at: "2017-05-09 21:22:56", updated_at: "2017-05-09 22:17:36"},
      {id: 446, futsal_game_id: 17, team_id: 4, goal_id: 1, assist_id: nil, time: 3157, video_link: "http://www.dailymotion.com/embed/video/x5lki95?autoPlay=1", created_at: "2017-05-09 21:22:56", updated_at: "2017-05-09 22:18:15"},
      {id: 447, futsal_game_id: 17, team_id: 4, goal_id: 15, assist_id: 39, time: 3196, video_link: "http://www.dailymotion.com/embed/video/x5lkids?autoPlay=1", created_at: "2017-05-09 21:22:56", updated_at: "2017-05-09 22:19:20"},
      {id: 448, futsal_game_id: 17, team_id: 3, goal_id: 17, assist_id: nil, time: 3286, video_link: "http://www.dailymotion.com/embed/video/x5lkijr?autoPlay=1", created_at: "2017-05-09 21:22:57", updated_at: "2017-05-09 22:20:50"},
      {id: 449, futsal_game_id: 17, team_id: 4, goal_id: 1, assist_id: nil, time: 3334, video_link: "http://www.dailymotion.com/embed/video/x5lkinz?autoPlay=1", created_at: "2017-05-09 21:22:57", updated_at: "2017-05-09 22:21:28"},
      {id: 450, futsal_game_id: 17, team_id: 3, goal_id: 17, assist_id: 14, time: 3516, video_link: "http://www.dailymotion.com/embed/video/x5lkit3?autoPlay=1", created_at: "2017-05-09 21:22:57", updated_at: "2017-05-09 22:22:45"},
      {id: 451, futsal_game_id: 17, team_id: 4, goal_id: 15, assist_id: 1, time: 3547, video_link: "http://www.dailymotion.com/embed/video/x5lkiy2?autoPlay=1", created_at: "2017-05-09 21:22:57", updated_at: "2017-05-09 22:23:49"},
      {id: 452, futsal_game_id: 17, team_id: 3, goal_id: 17, assist_id: 31, time: 3578, video_link: "http://www.dailymotion.com/embed/video/x5lkj3j?autoPlay=1", created_at: "2017-05-09 21:22:57", updated_at: "2017-05-09 22:24:52"},
      {id: 453, futsal_game_id: 18, team_id: 1, goal_id: 2, assist_id: 7, time: 40, video_link: "http://www.dailymotion.com/embed/video/x5lobc2?autoPlay=1", created_at: "2017-05-10 06:32:56", updated_at: "2017-05-10 06:39:36"},
      {id: 454, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: nil, time: 266, video_link: "http://www.dailymotion.com/embed/video/x5lobjl?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:40:42"},
      {id: 455, futsal_game_id: 18, team_id: 2, goal_id: 49, assist_id: nil, time: 476, video_link: "http://www.dailymotion.com/embed/video/x5lobrv?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:41:11"},
      {id: 456, futsal_game_id: 18, team_id: 1, goal_id: 2, assist_id: nil, time: 595, video_link: "http://www.dailymotion.com/embed/video/x5lobzj?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:42:00"},
      {id: 457, futsal_game_id: 18, team_id: 1, goal_id: 2, assist_id: nil, time: 628, video_link: "http://www.dailymotion.com/embed/video/x5loc7d?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:42:29"},
      {id: 458, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: 49, time: 694, video_link: "http://www.dailymotion.com/embed/video/x5locek?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:43:34"},
      {id: 459, futsal_game_id: 18, team_id: 2, goal_id: 50, assist_id: 1, time: 751, video_link: "http://www.dailymotion.com/embed/video/x5loclm?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:45:05"},
      {id: 460, futsal_game_id: 18, team_id: 2, goal_id: 50, assist_id: nil, time: 833, video_link: "http://www.dailymotion.com/embed/video/x5locqi?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:45:31"},
      {id: 461, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: nil, time: 997, video_link: "http://www.dailymotion.com/embed/video/x5locwf?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:46:01"},
      {id: 462, futsal_game_id: 18, team_id: 1, goal_id: 2, assist_id: 3, time: 1014, video_link: "http://www.dailymotion.com/embed/video/x5lod44?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:47:40"},
      {id: 463, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: 50, time: 1169, video_link: "http://www.dailymotion.com/embed/video/x5lodbi?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:50:05"},
      {id: 464, futsal_game_id: 18, team_id: 1, goal_id: 4, assist_id: nil, time: 1212, video_link: "http://www.dailymotion.com/embed/video/x5lodj4?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:50:49"},
      {id: 465, futsal_game_id: 18, team_id: 1, goal_id: 7, assist_id: 2, time: 1558, video_link: "http://www.dailymotion.com/embed/video/x5lodrl?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:51:24"},
      {id: 466, futsal_game_id: 18, team_id: 2, goal_id: 54, assist_id: 49, time: 1899, video_link: "http://www.dailymotion.com/embed/video/x5lodzw?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:52:36"},
      {id: 467, futsal_game_id: 18, team_id: 1, goal_id: 2, assist_id: nil, time: 1926, video_link: "http://www.dailymotion.com/embed/video/x5loe6y?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:54:26"},
      {id: 468, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: 49, time: 1954, video_link: "http://www.dailymotion.com/embed/video/x5loee7?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:55:06"},
      {id: 469, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: 49, time: 2212, video_link: "http://www.dailymotion.com/embed/video/x5loekw?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:56:27"},
      {id: 470, futsal_game_id: 18, team_id: 2, goal_id: 50, assist_id: nil, time: 2249, video_link: "http://www.dailymotion.com/embed/video/x5loeqr?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:56:59"},
      {id: 471, futsal_game_id: 18, team_id: 1, goal_id: 3, assist_id: nil, time: 2321, video_link: "http://www.dailymotion.com/embed/video/x5loevr?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 06:57:27"},
      {id: 472, futsal_game_id: 18, team_id: 1, goal_id: 4, assist_id: 2, time: 2379, video_link: "http://www.dailymotion.com/embed/video/x5lof0i?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:47:50"},
      {id: 473, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: nil, time: 2426, video_link: "http://www.dailymotion.com/embed/video/x5lof5w?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:48:26"},
      {id: 474, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: nil, time: 2540, video_link: "http://www.dailymotion.com/embed/video/x5lofbg?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:49:57"},
      {id: 475, futsal_game_id: 18, team_id: 2, goal_id: 8, assist_id: 50, time: 2578, video_link: "http://www.dailymotion.com/embed/video/x5lofht?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:51:29"},
      {id: 476, futsal_game_id: 18, team_id: 2, goal_id: 49, assist_id: nil, time: 2705, video_link: "http://www.dailymotion.com/embed/video/x5lofni?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:52:10"},
      {id: 477, futsal_game_id: 18, team_id: 1, goal_id: 4, assist_id: 7, time: 2733, video_link: "http://www.dailymotion.com/embed/video/x5lofss?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:52:52"},
      {id: 478, futsal_game_id: 18, team_id: 2, goal_id: 8, assist_id: 49, time: 2913, video_link: "http://www.dailymotion.com/embed/video/x5lofym?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:53:38"},
      {id: 479, futsal_game_id: 18, team_id: 2, goal_id: 49, assist_id: 1, time: 3010, video_link: "http://www.dailymotion.com/embed/video/x5log3t?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:54:31"},
      {id: 480, futsal_game_id: 18, team_id: 2, goal_id: 49, assist_id: 8, time: 3107, video_link: "http://www.dailymotion.com/embed/video/x5log90?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:55:54"},
      {id: 481, futsal_game_id: 18, team_id: 2, goal_id: 8, assist_id: 49, time: 3158, video_link: "http://www.dailymotion.com/embed/video/x5logem?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 10:57:59"},
      {id: 482, futsal_game_id: 18, team_id: 1, goal_id: 3, assist_id: nil, time: 3326, video_link: "http://www.dailymotion.com/embed/video/x5logjo?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 11:00:27"},
      {id: 483, futsal_game_id: 18, team_id: 2, goal_id: 1, assist_id: 49, time: 3411, video_link: "http://www.dailymotion.com/embed/video/x5logo5?autoPlay=1", created_at: "2017-05-10 06:32:57", updated_at: "2017-05-10 11:01:07"},
      {id: 484, futsal_game_id: 18, team_id: 2, goal_id: 54, assist_id: 1, time: 3541, video_link: "http://www.dailymotion.com/embed/video/x5logsm?autoPlay=1", created_at: "2017-05-10 06:32:58", updated_at: "2017-05-10 11:01:44"},
      {id: 485, futsal_game_id: 19, team_id: 4, goal_id: 57, assist_id: nil, time: 89, video_link: "http://www.dailymotion.com/embed/video/x5ltqft?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:02:03"},
      {id: 486, futsal_game_id: 19, team_id: 4, goal_id: 57, assist_id: nil, time: 184, video_link: "http://www.dailymotion.com/embed/video/x5ltqjm?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:03:47"},
      {id: 487, futsal_game_id: 19, team_id: 3, goal_id: 36, assist_id: nil, time: 232, video_link: "http://www.dailymotion.com/embed/video/x5ltqmc?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:04:38"},
      {id: 488, futsal_game_id: 19, team_id: 3, goal_id: 43, assist_id: nil, time: 289, video_link: "http://www.dailymotion.com/embed/video/x5ltqqd?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:06:06"},
      {id: 489, futsal_game_id: 19, team_id: 3, goal_id: 36, assist_id: 4, time: 322, video_link: "http://www.dailymotion.com/embed/video/x5ltqta?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:06:58"},
      {id: 490, futsal_game_id: 19, team_id: 4, goal_id: 50, assist_id: 1, time: 366, video_link: "http://www.dailymotion.com/embed/video/x5ltqvx?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:07:43"},
      {id: 491, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: 50, time: 488, video_link: "http://www.dailymotion.com/embed/video/x5ltqzn?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:20:46"},
      {id: 492, futsal_game_id: 19, team_id: 3, goal_id: 4, assist_id: 58, time: 586, video_link: "http://www.dailymotion.com/embed/video/x5ltr1y?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:22:34"},
      {id: 493, futsal_game_id: 19, team_id: 3, goal_id: 58, assist_id: 4, time: 680, video_link: "http://www.dailymotion.com/embed/video/x5ltr3q?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:23:24"},
      {id: 494, futsal_game_id: 19, team_id: 3, goal_id: 43, assist_id: 4, time: 739, video_link: "http://www.dailymotion.com/embed/video/x5ltr5j?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:26:28"},
      {id: 495, futsal_game_id: 19, team_id: 3, goal_id: 36, assist_id: nil, time: 818, video_link: "http://www.dailymotion.com/embed/video/x5ltr8a?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:27:47"},
      {id: 496, futsal_game_id: 19, team_id: 4, goal_id: 11, assist_id: 57, time: 837, video_link: "http://www.dailymotion.com/embed/video/x5ltras?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:29:46"},
      {id: 497, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: nil, time: 1045, video_link: "http://www.dailymotion.com/embed/video/x5ltrdo?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 11:39:12"},
      {id: 498, futsal_game_id: 19, team_id: 4, goal_id: 40, assist_id: 57, time: 1115, video_link: "http://www.dailymotion.com/embed/video/x5ltrgo?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 16:58:14"},
      {id: 499, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: nil, time: 1165, video_link: "http://www.dailymotion.com/embed/video/x5ltrjh?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 16:57:06"},
      {id: 500, futsal_game_id: 19, team_id: 3, goal_id: 58, assist_id: 36, time: 1226, video_link: "http://www.dailymotion.com/embed/video/x5ltrmd?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 16:56:21"},
      {id: 501, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: nil, time: 1319, video_link: "http://www.dailymotion.com/embed/video/x5ltros?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 16:55:47"},
      {id: 502, futsal_game_id: 19, team_id: 3, goal_id: 58, assist_id: 36, time: 1419, video_link: "http://www.dailymotion.com/embed/video/x5ltrs0?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 18:21:26"},
      {id: 503, futsal_game_id: 19, team_id: 4, goal_id: 50, assist_id: 1, time: 1580, video_link: "http://www.dailymotion.com/embed/video/x5ltrvy?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 18:22:22"},
      {id: 504, futsal_game_id: 19, team_id: 3, goal_id: 36, assist_id: nil, time: 1855, video_link: "http://www.dailymotion.com/embed/video/x5ltrz2?autoPlay=1", created_at: "2017-05-11 06:44:02", updated_at: "2017-05-11 18:34:39"},
      {id: 505, futsal_game_id: 19, team_id: 3, goal_id: 58, assist_id: nil, time: 1904, video_link: "http://www.dailymotion.com/embed/video/x5lts1m?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:32:33"},
      {id: 506, futsal_game_id: 19, team_id: 4, goal_id: 40, assist_id: 1, time: 2073, video_link: "http://www.dailymotion.com/embed/video/x5lts4q?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:32:02"},
      {id: 507, futsal_game_id: 19, team_id: 4, goal_id: 57, assist_id: 1, time: 2152, video_link: "http://www.dailymotion.com/embed/video/x5lts73?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:36:06"},
      {id: 508, futsal_game_id: 19, team_id: 3, goal_id: 36, assist_id: nil, time: 2225, video_link: "http://www.dailymotion.com/embed/video/x5ltsab?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:37:38"},
      {id: 509, futsal_game_id: 19, team_id: 4, goal_id: 57, assist_id: nil, time: 2323, video_link: "http://www.dailymotion.com/embed/video/x5ltse1?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:41:54"},
      {id: 510, futsal_game_id: 19, team_id: 3, goal_id: 43, assist_id: nil, time: 2353, video_link: "http://www.dailymotion.com/embed/video/x5ltshi?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:43:29"},
      {id: 511, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: nil, time: 2480, video_link: "http://www.dailymotion.com/embed/video/x5ltskf?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:44:21"},
      {id: 512, futsal_game_id: 19, team_id: 3, goal_id: 43, assist_id: nil, time: 2550, video_link: "http://www.dailymotion.com/embed/video/x5ltsnk?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:44:55"},
      {id: 513, futsal_game_id: 19, team_id: 3, goal_id: 58, assist_id: 4, time: 2643, video_link: "http://www.dailymotion.com/embed/video/x5ltsqr?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:46:00"},
      {id: 514, futsal_game_id: 19, team_id: 4, goal_id: 57, assist_id: 1, time: 2685, video_link: "http://www.dailymotion.com/embed/video/x5ltstr?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:46:53"},
      {id: 515, futsal_game_id: 19, team_id: 3, goal_id: 4, assist_id: 58, time: 2780, video_link: "http://www.dailymotion.com/embed/video/x5ltsw6?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:48:19"},
      {id: 516, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: nil, time: 2839, video_link: "http://www.dailymotion.com/embed/video/x5ltszf?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:48:32"},
      {id: 517, futsal_game_id: 19, team_id: 4, goal_id: 1, assist_id: 40, time: 2902, video_link: "http://www.dailymotion.com/embed/video/x5ltt2g?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:49:42"},
      {id: 518, futsal_game_id: 19, team_id: 3, goal_id: 4, assist_id: 36, time: 2954, video_link: "http://www.dailymotion.com/embed/video/x5ltt5z?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:50:14"},
      {id: 519, futsal_game_id: 19, team_id: 4, goal_id: 57, assist_id: nil, time: 3056, video_link: "http://www.dailymotion.com/embed/video/x5ltt96?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:51:26"},
      {id: 520, futsal_game_id: 19, team_id: 4, goal_id: 40, assist_id: nil, time: 3223, video_link: "http://www.dailymotion.com/embed/video/x5lttcp?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:53:53"},
      {id: 521, futsal_game_id: 19, team_id: 3, goal_id: 4, assist_id: 36, time: 3278, video_link: "http://www.dailymotion.com/embed/video/x5lttge?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:53:04"},
      {id: 522, futsal_game_id: 19, team_id: 4, goal_id: 40, assist_id: nil, time: 3309, video_link: "http://www.dailymotion.com/embed/video/x5lttjq?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:55:38"},
      {id: 523, futsal_game_id: 19, team_id: 4, goal_id: 40, assist_id: 57, time: 3343, video_link: "http://www.dailymotion.com/embed/video/x5ltto0?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:56:45"},
      {id: 524, futsal_game_id: 19, team_id: 3, goal_id: 4, assist_id: nil, time: 3373, video_link: "http://www.dailymotion.com/embed/video/x5ltttg?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:57:17"},
      {id: 525, futsal_game_id: 19, team_id: 4, goal_id: 50, assist_id: nil, time: 3490, video_link: "http://www.dailymotion.com/embed/video/x5lttye?autoPlay=1", created_at: "2017-05-11 06:44:03", updated_at: "2017-05-11 18:58:03"},
      {id: 526, futsal_game_id: 20, team_id: 3, goal_id: 61, assist_id: nil, time: 273, video_link: "http://www.dailymotion.com/embed/video/x5m3u38?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:22:20"},
      {id: 527, futsal_game_id: 20, team_id: 3, goal_id: 62, assist_id: nil, time: 405, video_link: "http://www.dailymotion.com/embed/video/x5m3ucc?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:23:13"},
      {id: 528, futsal_game_id: 20, team_id: 4, goal_id: 1, assist_id: 49, time: 439, video_link: "http://www.dailymotion.com/embed/video/x5m3uky?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:15:56"},
      {id: 529, futsal_game_id: 20, team_id: 3, goal_id: 64, assist_id: nil, time: 510, video_link: "http://www.dailymotion.com/embed/video/x5m3usn?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:28:59"},
      {id: 530, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: nil, time: 624, video_link: "http://www.dailymotion.com/embed/video/x5m3v3n?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:30:07"},
      {id: 531, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: nil, time: 688, video_link: "http://www.dailymotion.com/embed/video/x5m3vfl?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:31:14"},
      {id: 532, futsal_game_id: 20, team_id: 4, goal_id: 49, assist_id: nil, time: 830, video_link: "http://www.dailymotion.com/embed/video/x5m6s4p?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:25:04"},
      {id: 533, futsal_game_id: 20, team_id: 3, goal_id: 64, assist_id: 65, time: 880, video_link: "http://www.dailymotion.com/embed/video/x5m6sa6?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:36:39"},
      {id: 534, futsal_game_id: 20, team_id: 4, goal_id: 1, assist_id: 50, time: 909, video_link: "http://www.dailymotion.com/embed/video/x5m6seb?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:37:37"},
      {id: 535, futsal_game_id: 20, team_id: 3, goal_id: 64, assist_id: 62, time: 937, video_link: "http://www.dailymotion.com/embed/video/x5m6sk8?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:38:39"},
      {id: 536, futsal_game_id: 20, team_id: 3, goal_id: 61, assist_id: nil, time: 1216, video_link: "http://www.dailymotion.com/embed/video/x5m6sqc?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:39:34"},
      {id: 537, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: nil, time: 1268, video_link: "http://www.dailymotion.com/embed/video/x5m6sxn?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:41:44"},
      {id: 538, futsal_game_id: 20, team_id: 4, goal_id: 49, assist_id: 50, time: 1412, video_link: "http://www.dailymotion.com/embed/video/x5m6t4r?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:11:12"},
      {id: 539, futsal_game_id: 20, team_id: 3, goal_id: 62, assist_id: nil, time: 1449, video_link: "http://www.dailymotion.com/embed/video/x5m6tb3?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:12:15"},
      {id: 540, futsal_game_id: 20, team_id: 4, goal_id: 49, assist_id: 50, time: 1716, video_link: "http://www.dailymotion.com/embed/video/x5m6thu?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:13:46"},
      {id: 541, futsal_game_id: 20, team_id: 3, goal_id: 62, assist_id: nil, time: 1823, video_link: "http://www.dailymotion.com/embed/video/x5m6tom?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:14:40"},
      {id: 542, futsal_game_id: 20, team_id: 3, goal_id: 61, assist_id: 64, time: 2035, video_link: "http://www.dailymotion.com/embed/video/x5m6ttj?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:15:39"},
      {id: 543, futsal_game_id: 20, team_id: 4, goal_id: 50, assist_id: 60, time: 2184, video_link: "http://www.dailymotion.com/embed/video/x5m6tyu?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:17:42"},
      {id: 544, futsal_game_id: 20, team_id: 3, goal_id: 61, assist_id: 62, time: 2220, video_link: "http://www.dailymotion.com/embed/video/x5m6u3v?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:56:10"},
      {id: 545, futsal_game_id: 20, team_id: 4, goal_id: 50, assist_id: nil, time: 2365, video_link: "http://www.dailymotion.com/embed/video/x5m6u8f?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:56:55"},
      {id: 546, futsal_game_id: 20, team_id: 4, goal_id: 1, assist_id: 49, time: 2434, video_link: "http://www.dailymotion.com/embed/video/x5m6ue0?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:57:55"},
      {id: 547, futsal_game_id: 20, team_id: 4, goal_id: 49, assist_id: 1, time: 2528, video_link: "http://www.dailymotion.com/embed/video/x5m6ukr?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:58:20"},
      {id: 548, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: nil, time: 2552, video_link: "http://www.dailymotion.com/embed/video/x5m6uow?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 19:59:03"},
      {id: 549, futsal_game_id: 20, team_id: 4, goal_id: 60, assist_id: 50, time: 2743, video_link: "http://www.dailymotion.com/embed/video/x5m6us3?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 11:25:59"},
      {id: 550, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: 61, time: 2800, video_link: "http://www.dailymotion.com/embed/video/x5m6uvs?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:00:07"},
      {id: 551, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: nil, time: 2828, video_link: "http://www.dailymotion.com/embed/video/x5m6uze?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:00:31"},
      {id: 552, futsal_game_id: 20, team_id: 4, goal_id: 50, assist_id: 1, time: 2855, video_link: "http://www.dailymotion.com/embed/video/x5m6v2m?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:01:18"},
      {id: 553, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: 61, time: 2998, video_link: "http://www.dailymotion.com/embed/video/x5m6v5o?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:01:50"},
      {id: 554, futsal_game_id: 20, team_id: 3, goal_id: 61, assist_id: 64, time: 3065, video_link: "http://www.dailymotion.com/embed/video/x5m6v87?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:02:45"},
      {id: 555, futsal_game_id: 20, team_id: 4, goal_id: 60, assist_id: 49, time: 3107, video_link: "http://www.dailymotion.com/embed/video/x5m6vaw?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:03:17"},
      {id: 556, futsal_game_id: 20, team_id: 4, goal_id: 50, assist_id: 1, time: 3217, video_link: "http://www.dailymotion.com/embed/video/x5m6vd8?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:03:48"},
      {id: 557, futsal_game_id: 20, team_id: 3, goal_id: 61, assist_id: 64, time: 3287, video_link: "http://www.dailymotion.com/embed/video/x5m6vfn?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:04:47"},
      {id: 558, futsal_game_id: 20, team_id: 4, goal_id: 50, assist_id: 1, time: 3317, video_link: "http://www.dailymotion.com/embed/video/x5m6vhz?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:05:20"},
      {id: 559, futsal_game_id: 20, team_id: 4, goal_id: 50, assist_id: 1, time: 3419, video_link: "http://www.dailymotion.com/embed/video/x5m6vke?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:06:07"},
      {id: 560, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: nil, time: 3467, video_link: "http://www.dailymotion.com/embed/video/x5m6vn7?autoPlay=1", created_at: "2017-05-15 10:46:50", updated_at: "2017-05-15 20:06:34"},
      {id: 561, futsal_game_id: 20, team_id: 3, goal_id: 65, assist_id: 62, time: 3515, video_link: "http://www.dailymotion.com/embed/video/x5m6vqi?autoPlay=1", created_at: "2017-05-15 10:46:51", updated_at: "2017-05-15 20:07:03"},
      {id: 562, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: 1, time: 59, video_link: "http://www.dailymotion.com/embed/video/x5mbhi6?autoPlay=1", created_at: "2017-05-15 10:52:42", updated_at: "2017-05-15 10:57:13"},
      {id: 563, futsal_game_id: 21, team_id: 3, goal_id: 12, assist_id: nil, time: 359, video_link: "http://www.dailymotion.com/embed/video/x5mbhl0?autoPlay=1", created_at: "2017-05-15 10:52:42", updated_at: "2017-05-15 10:59:01"},
      {id: 564, futsal_game_id: 21, team_id: 4, goal_id: 19, assist_id: 16, time: 490, video_link: "http://www.dailymotion.com/embed/video/x5mbhof?autoPlay=1", created_at: "2017-05-15 10:52:42", updated_at: "2017-05-15 11:00:11"},
      {id: 565, futsal_game_id: 21, team_id: 3, goal_id: 17, assist_id: 12, time: 520, video_link: "http://www.dailymotion.com/embed/video/x5mbhsf?autoPlay=1", created_at: "2017-05-15 10:52:42", updated_at: "2017-05-15 20:11:40"},
      {id: 566, futsal_game_id: 21, team_id: 4, goal_id: 19, assist_id: 31, time: 611, video_link: "http://www.dailymotion.com/embed/video/x5mbhv7?autoPlay=1", created_at: "2017-05-15 10:52:42", updated_at: "2017-05-15 20:13:25"},
      {id: 567, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: 31, time: 686, video_link: "http://www.dailymotion.com/embed/video/x5mbhy1?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:14:20"},
      {id: 568, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: 16, time: 903, video_link: "http://www.dailymotion.com/embed/video/x5mbi1h?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:15:02"},
      {id: 569, futsal_game_id: 21, team_id: 3, goal_id: 12, assist_id: nil, time: 952, video_link: "", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:15:44"},
      {id: 570, futsal_game_id: 21, team_id: 3, goal_id: 17, assist_id: 15, time: 1009, video_link: "http://www.dailymotion.com/embed/video/x5mbi5g?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:16:33"},
      {id: 571, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: 1, time: 1299, video_link: "http://www.dailymotion.com/embed/video/x5mbiaj?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:17:24"},
      {id: 572, futsal_game_id: 21, team_id: 3, goal_id: 17, assist_id: nil, time: 1335, video_link: "http://www.dailymotion.com/embed/video/x5mbifh?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:18:10"},
      {id: 573, futsal_game_id: 21, team_id: 3, goal_id: 15, assist_id: 17, time: 1509, video_link: "http://www.dailymotion.com/embed/video/x5mbiiz?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:18:48"},
      {id: 574, futsal_game_id: 21, team_id: 3, goal_id: 15, assist_id: 17, time: 1545, video_link: "http://www.dailymotion.com/embed/video/x5mbim6?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:20:59"},
      {id: 575, futsal_game_id: 21, team_id: 3, goal_id: 15, assist_id: nil, time: 1575, video_link: "http://www.dailymotion.com/embed/video/x5mbiqd?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:21:51"},
      {id: 576, futsal_game_id: 21, team_id: 3, goal_id: 15, assist_id: 12, time: 1813, video_link: "http://www.dailymotion.com/embed/video/x5mbitf?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:22:33"},
      {id: 577, futsal_game_id: 21, team_id: 3, goal_id: 15, assist_id: 12, time: 1873, video_link: "http://www.dailymotion.com/embed/video/x5mbiwp?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:23:23"},
      {id: 578, futsal_game_id: 21, team_id: 3, goal_id: 4, assist_id: nil, time: 1926, video_link: "http://www.dailymotion.com/embed/video/x5mbj06?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:24:17"},
      {id: 579, futsal_game_id: 21, team_id: 4, goal_id: 19, assist_id: 39, time: 1961, video_link: "http://www.dailymotion.com/embed/video/x5mbj3p?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:24:53"},
      {id: 580, futsal_game_id: 21, team_id: 3, goal_id: 12, assist_id: nil, time: 2146, video_link: "http://www.dailymotion.com/embed/video/x5mbj8n?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:26:21"},
      {id: 581, futsal_game_id: 21, team_id: 4, goal_id: 31, assist_id: nil, time: 2227, video_link: "http://www.dailymotion.com/embed/video/x5mbjde?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:27:05"},
      {id: 582, futsal_game_id: 21, team_id: 4, goal_id: 31, assist_id: nil, time: 2439, video_link: "http://www.dailymotion.com/embed/video/x5mbjh6?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:28:27"},
      {id: 583, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: nil, time: 2411, video_link: "http://www.dailymotion.com/embed/video/x5mbjl3?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:29:08"},
      {id: 584, futsal_game_id: 21, team_id: 3, goal_id: 12, assist_id: nil, time: 2509, video_link: "http://www.dailymotion.com/embed/video/x5mbjpn?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:29:41"},
      {id: 585, futsal_game_id: 21, team_id: 3, goal_id: 17, assist_id: 15, time: 2544, video_link: "http://www.dailymotion.com/embed/video/x5mbjuy?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:30:22"},
      {id: 586, futsal_game_id: 21, team_id: 3, goal_id: 15, assist_id: 12, time: 2924, video_link: "http://www.dailymotion.com/embed/video/x5mbjyj?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:31:14"},
      {id: 587, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: 16, time: 2966, video_link: "http://www.dailymotion.com/embed/video/x5mbk2d?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:32:56"},
      {id: 588, futsal_game_id: 21, team_id: 4, goal_id: 31, assist_id: 1, time: 2995, video_link: "http://www.dailymotion.com/embed/video/x5mbk5a?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:33:14"},
      {id: 589, futsal_game_id: 21, team_id: 4, goal_id: 39, assist_id: 16, time: 3137, video_link: "http://www.dailymotion.com/embed/video/x5mbke5?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 20:34:19"},
      {id: 590, futsal_game_id: 21, team_id: 4, goal_id: 16, assist_id: nil, time: 3370, video_link: "http://www.dailymotion.com/embed/video/x5mbkic?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 11:00:54"},
      {id: 591, futsal_game_id: 21, team_id: 4, goal_id: 1, assist_id: nil, time: 3477, video_link: "http://www.dailymotion.com/embed/video/x5mbkmq?autoPlay=1", created_at: "2017-05-15 10:52:43", updated_at: "2017-05-15 11:01:40"},
      {id: 592, futsal_game_id: 22, team_id: 4, goal_id: 1, assist_id: 61, time: 184, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:27:01"},
      {id: 593, futsal_game_id: 22, team_id: 4, goal_id: 61, assist_id: 1, time: 243, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:28:04"},
      {id: 594, futsal_game_id: 22, team_id: 4, goal_id: 61, assist_id: nil, time: 511, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:30:06"},
      {id: 595, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: nil, time: 573, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:31:20"},
      {id: 596, futsal_game_id: 22, team_id: 4, goal_id: 1, assist_id: 62, time: 671, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:31:58"},
      {id: 597, futsal_game_id: 22, team_id: 4, goal_id: 61, assist_id: nil, time: 703, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:33:09"},
      {id: 598, futsal_game_id: 22, team_id: 4, goal_id: 42, assist_id: 62, time: 862, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:34:08"},
      {id: 599, futsal_game_id: 22, team_id: 4, goal_id: 42, assist_id: 1, time: 904, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:34:57"},
      {id: 600, futsal_game_id: 22, team_id: 4, goal_id: 65, assist_id: nil, time: 986, video_link: "", created_at: "2017-05-17 06:25:01", updated_at: "2017-05-17 06:42:12"},
      {id: 601, futsal_game_id: 22, team_id: 4, goal_id: 65, assist_id: 42, time: 1223, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 06:42:43"},
      {id: 602, futsal_game_id: 22, team_id: 4, goal_id: 65, assist_id: 42, time: 1347, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 06:43:19"},
      {id: 603, futsal_game_id: 22, team_id: 4, goal_id: 42, assist_id: 65, time: 1417, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 06:44:10"},
      {id: 604, futsal_game_id: 22, team_id: 4, goal_id: 65, assist_id: nil, time: 1442, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 06:45:16"},
      {id: 605, futsal_game_id: 22, team_id: 4, goal_id: 61, assist_id: 65, time: 1529, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 06:46:20"},
      {id: 606, futsal_game_id: 22, team_id: 3, goal_id: 42, assist_id: 40, time: 1550, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 06:46:54"},
      {id: 607, futsal_game_id: 22, team_id: 4, goal_id: 67, assist_id: 61, time: 1607, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 10:52:23"},
      {id: 608, futsal_game_id: 22, team_id: 4, goal_id: 62, assist_id: nil, time: 2074, video_link: "", created_at: "2017-05-17 06:25:02", updated_at: "2017-05-17 10:53:00"},
      {id: 609, futsal_game_id: 22, team_id: 4, goal_id: 67, assist_id: 62, time: 2183, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 10:53:46"},
      {id: 610, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: 42, time: 2225, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 06:47:56"},
      {id: 611, futsal_game_id: 22, team_id: 4, goal_id: 62, assist_id: 67, time: 2257, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 10:55:03"},
      {id: 612, futsal_game_id: 22, team_id: 4, goal_id: 67, assist_id: 62, time: 2341, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 10:56:21"},
      {id: 613, futsal_game_id: 22, team_id: 4, goal_id: 65, assist_id: 62, time: 2382, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 10:57:48"},
      {id: 614, futsal_game_id: 22, team_id: 3, goal_id: 4, assist_id: nil, time: 2463, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 10:58:22"},
      {id: 615, futsal_game_id: 22, team_id: 4, goal_id: 61, assist_id: 65, time: 2508, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 11:01:12"},
      {id: 616, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: nil, time: 2580, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 11:01:53"},
      {id: 617, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: 42, time: 2629, video_link: "", created_at: "2017-05-17 06:25:03", updated_at: "2017-05-17 11:19:14"},
      {id: 618, futsal_game_id: 22, team_id: 3, goal_id: 1, assist_id: 42, time: 2670, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 11:22:27"},
      {id: 619, futsal_game_id: 22, team_id: 3, goal_id: 42, assist_id: 66, time: 2798, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 20:12:21"},
      {id: 620, futsal_game_id: 22, team_id: 3, goal_id: 1, assist_id: nil, time: 2843, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 20:13:49"},
      {id: 621, futsal_game_id: 22, team_id: 3, goal_id: 42, assist_id: nil, time: 2903, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 20:14:16"},
      {id: 622, futsal_game_id: 22, team_id: 4, goal_id: 68, assist_id: 65, time: 3027, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 20:15:34"},
      {id: 623, futsal_game_id: 22, team_id: 4, goal_id: 67, assist_id: 68, time: 3128, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 11:28:58"},
      {id: 624, futsal_game_id: 22, team_id: 3, goal_id: 1, assist_id: nil, time: 3173, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 11:33:12"},
      {id: 625, futsal_game_id: 22, team_id: 4, goal_id: 68, assist_id: nil, time: 3236, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 11:30:43"},
      {id: 626, futsal_game_id: 22, team_id: 3, goal_id: 66, assist_id: 40, time: 3261, video_link: "", created_at: "2017-05-17 06:25:04", updated_at: "2017-05-17 11:31:12"},
      {id: 627, futsal_game_id: 22, team_id: 4, goal_id: 61, assist_id: nil, time: 3282, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 11:33:47"},
      {id: 628, futsal_game_id: 22, team_id: 3, goal_id: 4, assist_id: nil, time: 3140, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 20:09:44"},
      {id: 629, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: 36, time: 3371, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 20:10:39"},
      {id: 630, futsal_game_id: 22, team_id: 3, goal_id: 66, assist_id: nil, time: 3392, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 20:12:33"},
      {id: 631, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: nil, time: 3424, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 20:06:39"},
      {id: 632, futsal_game_id: 22, team_id: 4, goal_id: 67, assist_id: 65, time: 3447, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 20:05:07"},
      {id: 633, futsal_game_id: 22, team_id: 3, goal_id: 40, assist_id: nil, time: 3468, video_link: "", created_at: "2017-05-17 06:25:05", updated_at: "2017-05-17 11:57:33"},
      {id: 634, futsal_game_id: 23, team_id: 4, goal_id: 40, assist_id: 1, time: 72, video_link: "", created_at: "2017-05-18 06:46:52", updated_at: "2017-05-18 06:48:49"},
      {id: 635, futsal_game_id: 23, team_id: 3, goal_id: 57, assist_id: nil, time: 89, video_link: "", created_at: "2017-05-18 06:46:53", updated_at: "2017-05-18 06:49:38"},
      {id: 636, futsal_game_id: 23, team_id: 4, goal_id: 58, assist_id: 1, time: 325, video_link: "", created_at: "2017-05-18 06:46:53", updated_at: "2017-05-18 06:50:16"},
      {id: 637, futsal_game_id: 23, team_id: 4, goal_id: 17, assist_id: nil, time: 558, video_link: "", created_at: "2017-05-18 06:46:53", updated_at: "2017-05-18 06:51:22"},
      {id: 638, futsal_game_id: 23, team_id: 3, goal_id: 42, assist_id: 57, time: 1014, video_link: "", created_at: "2017-05-18 06:46:53", updated_at: "2017-05-18 06:52:34"},
      {id: 639, futsal_game_id: 23, team_id: 3, goal_id: 50, assist_id: 4, time: 1126, video_link: "", created_at: "2017-05-18 06:46:54", updated_at: "2017-05-18 06:53:48"},
      {id: 640, futsal_game_id: 23, team_id: 3, goal_id: 42, assist_id: nil, time: 1412, video_link: "", created_at: "2017-05-18 06:46:54", updated_at: "2017-05-18 17:45:37"},
      {id: 641, futsal_game_id: 23, team_id: 3, goal_id: 50, assist_id: nil, time: 1488, video_link: "", created_at: "2017-05-18 06:46:54", updated_at: "2017-05-18 17:46:08"},
      {id: 642, futsal_game_id: 23, team_id: 3, goal_id: 42, assist_id: 57, time: 1575, video_link: "", created_at: "2017-05-18 06:46:54", updated_at: "2017-05-18 17:56:09"},
      {id: 643, futsal_game_id: 23, team_id: 3, goal_id: 57, assist_id: nil, time: 1666, video_link: "", created_at: "2017-05-18 06:46:55", updated_at: "2017-05-18 17:54:08"},
      {id: 644, futsal_game_id: 23, team_id: 4, goal_id: 40, assist_id: 1, time: 1748, video_link: "", created_at: "2017-05-18 06:46:55", updated_at: "2017-05-18 17:53:40"},
      {id: 645, futsal_game_id: 23, team_id: 3, goal_id: 40, assist_id: 43, time: 1792, video_link: "", created_at: "2017-05-18 06:46:55", updated_at: "2017-05-18 17:52:58"},
      {id: 646, futsal_game_id: 23, team_id: 3, goal_id: 49, assist_id: nil, time: 1937, video_link: "", created_at: "2017-05-18 06:46:55", updated_at: "2017-05-18 17:58:55"},
      {id: 647, futsal_game_id: 23, team_id: 3, goal_id: 57, assist_id: nil, time: 2110, video_link: "", created_at: "2017-05-18 06:46:56", updated_at: "2017-05-18 18:04:13"},
      {id: 648, futsal_game_id: 23, team_id: 4, goal_id: 40, assist_id: 17, time: 2243, video_link: "", created_at: "2017-05-18 06:46:56", updated_at: "2017-05-18 18:05:12"},
      {id: 649, futsal_game_id: 23, team_id: 4, goal_id: 43, assist_id: nil, time: 2322, video_link: "", created_at: "2017-05-18 06:46:56", updated_at: "2017-05-18 18:05:51"},
      {id: 650, futsal_game_id: 23, team_id: 3, goal_id: 4, assist_id: nil, time: 2415, video_link: "", created_at: "2017-05-18 06:46:56", updated_at: "2017-05-18 18:06:20"},
      {id: 651, futsal_game_id: 23, team_id: 4, goal_id: 43, assist_id: 1, time: 2464, video_link: "", created_at: "2017-05-18 06:46:57", updated_at: "2017-05-18 18:06:52"},
      {id: 652, futsal_game_id: 23, team_id: 4, goal_id: 1, assist_id: nil, time: 2574, video_link: "", created_at: "2017-05-18 06:46:57", updated_at: "2017-05-18 18:07:46"},
      {id: 653, futsal_game_id: 23, team_id: 3, goal_id: 50, assist_id: 4, time: 2638, video_link: "", created_at: "2017-05-18 06:46:57", updated_at: "2017-05-18 18:08:25"},
      {id: 654, futsal_game_id: 23, team_id: 4, goal_id: 43, assist_id: nil, time: 2659, video_link: "", created_at: "2017-05-18 06:46:57", updated_at: "2017-05-18 18:09:03"},
      {id: 655, futsal_game_id: 23, team_id: 3, goal_id: 49, assist_id: 50, time: 2802, video_link: "", created_at: "2017-05-18 06:46:58", updated_at: "2017-05-18 18:10:04"},
      {id: 656, futsal_game_id: 23, team_id: 4, goal_id: 1, assist_id: 58, time: 2840, video_link: "", created_at: "2017-05-18 06:46:58", updated_at: "2017-05-18 18:11:38"},
      {id: 657, futsal_game_id: 23, team_id: 3, goal_id: 57, assist_id: 4, time: 2998, video_link: "", created_at: "2017-05-18 06:46:58", updated_at: "2017-05-18 18:12:28"},
      {id: 658, futsal_game_id: 23, team_id: 3, goal_id: 49, assist_id: nil, time: 3224, video_link: "", created_at: "2017-05-18 06:46:58", updated_at: "2017-05-18 18:13:05"},
      {id: 659, futsal_game_id: 23, team_id: 3, goal_id: 42, assist_id: nil, time: 3353, video_link: "", created_at: "2017-05-18 06:46:59", updated_at: "2017-05-18 18:13:42"},
      {id: 660, futsal_game_id: 23, team_id: 3, goal_id: 42, assist_id: 49, time: 3528, video_link: "", created_at: "2017-05-18 06:46:59", updated_at: "2017-05-18 18:14:22"},
      {id: 661, futsal_game_id: 23, team_id: 4, goal_id: 17, assist_id: 1, time: 3560, video_link: "", created_at: "2017-05-18 06:46:59", updated_at: "2017-05-18 18:14:51"}
    ])
    GoalMark.create!([
      {id: 1, goal_id: 1, mark: 2, user_id: 1, mac_address: "::1", created_at: "2017-04-04 21:25:46", updated_at: "2017-04-04 22:36:55"},
      {id: 2, goal_id: 90, mark: 3, user_id: nil, mac_address: "::1", created_at: "2017-04-04 22:39:02", updated_at: "2017-04-04 22:42:31"}
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
      {id: 81, user_id: 19, futsal_game_id: 8, team_id: 4, goal: 0, assist: 0, created_at: "2017-04-18 09:39:36", updated_at: "2017-04-18 09:40:20"},
      {id: 82, user_id: 1, futsal_game_id: 9, team_id: 1, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:27"},
      {id: 83, user_id: 7, futsal_game_id: 9, team_id: 2, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:31"},
      {id: 84, user_id: 9, futsal_game_id: 9, team_id: 1, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:35"},
      {id: 85, user_id: 3, futsal_game_id: 9, team_id: 2, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:39"},
      {id: 86, user_id: 4, futsal_game_id: 9, team_id: 2, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:44"},
      {id: 87, user_id: 36, futsal_game_id: 9, team_id: 2, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:48"},
      {id: 88, user_id: 8, futsal_game_id: 9, team_id: 1, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:52"},
      {id: 89, user_id: 40, futsal_game_id: 9, team_id: 2, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:26:59"},
      {id: 90, user_id: 13, futsal_game_id: 9, team_id: 1, goal: 0, assist: 0, created_at: "2017-04-18 11:22:01", updated_at: "2017-04-18 19:27:03"},
      {id: 91, user_id: 42, futsal_game_id: 9, team_id: 1, goal: 0, assist: 0, created_at: "2017-04-18 11:24:48", updated_at: "2017-04-18 19:27:50"},
      {id: 92, user_id: 41, futsal_game_id: 9, team_id: 2, goal: 0, assist: 0, created_at: "2017-04-18 11:24:48", updated_at: "2017-04-18 19:27:38"},
      {id: 93, user_id: 43, futsal_game_id: 9, team_id: 1, goal: 0, assist: 0, created_at: "2017-04-18 11:24:48", updated_at: "2017-04-18 19:27:42"},
      {id: 94, user_id: 1, futsal_game_id: 10, team_id: 6, goal: 0, assist: 0, created_at: "2017-04-22 12:53:52", updated_at: "2017-04-22 13:04:34"},
      {id: 95, user_id: 22, futsal_game_id: 10, team_id: 5, goal: 0, assist: 0, created_at: "2017-04-22 12:53:52", updated_at: "2017-04-22 13:04:46"},
      {id: 96, user_id: 23, futsal_game_id: 10, team_id: 5, goal: 0, assist: 0, created_at: "2017-04-22 12:53:52", updated_at: "2017-04-22 13:04:51"},
      {id: 97, user_id: 29, futsal_game_id: 10, team_id: 6, goal: 0, assist: 0, created_at: "2017-04-22 12:53:52", updated_at: "2017-04-22 13:04:56"},
      {id: 98, user_id: 30, futsal_game_id: 10, team_id: 6, goal: 0, assist: 0, created_at: "2017-04-22 12:53:52", updated_at: "2017-04-22 13:05:17"},
      {id: 99, user_id: 47, futsal_game_id: 10, team_id: 6, goal: 0, assist: 0, created_at: "2017-04-22 13:04:27", updated_at: "2017-04-22 13:05:23"},
      {id: 100, user_id: 45, futsal_game_id: 10, team_id: 5, goal: 0, assist: 0, created_at: "2017-04-22 13:04:27", updated_at: "2017-04-22 13:05:27"},
      {id: 101, user_id: 46, futsal_game_id: 10, team_id: 5, goal: 0, assist: 0, created_at: "2017-04-22 13:04:27", updated_at: "2017-04-22 13:05:31"},
      {id: 102, user_id: 48, futsal_game_id: 10, team_id: 6, goal: 0, assist: 0, created_at: "2017-04-22 13:04:27", updated_at: "2017-04-22 13:05:36"},
      {id: 103, user_id: 44, futsal_game_id: 10, team_id: 5, goal: 0, assist: 0, created_at: "2017-04-22 13:04:27", updated_at: "2017-04-22 13:05:40"},
      {id: 104, user_id: 1, futsal_game_id: 11, team_id: 4, goal: 8, assist: 2, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:17:54"},
      {id: 105, user_id: 32, futsal_game_id: 11, team_id: 4, goal: 4, assist: 6, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:56:17"},
      {id: 106, user_id: 14, futsal_game_id: 11, team_id: 3, goal: 3, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:56:17"},
      {id: 107, user_id: 12, futsal_game_id: 11, team_id: 3, goal: 11, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:31:28"},
      {id: 108, user_id: 40, futsal_game_id: 11, team_id: 4, goal: 7, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:56:18"},
      {id: 109, user_id: 39, futsal_game_id: 11, team_id: 3, goal: 6, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:57:44"},
      {id: 110, user_id: 16, futsal_game_id: 11, team_id: 4, goal: 0, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 11:43:01"},
      {id: 111, user_id: 17, futsal_game_id: 11, team_id: 4, goal: 1, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 11:49:20"},
      {id: 112, user_id: 31, futsal_game_id: 11, team_id: 3, goal: 0, assist: 3, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:57:44"},
      {id: 113, user_id: 11, futsal_game_id: 11, team_id: 3, goal: 1, assist: 1, created_at: "2017-04-23 19:38:46", updated_at: "2017-04-24 13:56:18"},
      {id: 114, user_id: 1, futsal_game_id: 12, team_id: 2, goal: 7, assist: 3, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 14:42:39"},
      {id: 115, user_id: 4, futsal_game_id: 12, team_id: 1, goal: 5, assist: 3, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 14:56:00"},
      {id: 116, user_id: 7, futsal_game_id: 12, team_id: 1, goal: 0, assist: 1, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 10:50:21"},
      {id: 117, user_id: 8, futsal_game_id: 12, team_id: 1, goal: 1, assist: 0, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 14:56:00"},
      {id: 118, user_id: 9, futsal_game_id: 12, team_id: 1, goal: 1, assist: 2, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 14:56:48"},
      {id: 119, user_id: 49, futsal_game_id: 12, team_id: 2, goal: 0, assist: 3, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 11:27:21"},
      {id: 120, user_id: 50, futsal_game_id: 12, team_id: 2, goal: 1, assist: 3, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 11:11:30"},
      {id: 121, user_id: 40, futsal_game_id: 12, team_id: 2, goal: 11, assist: 0, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 14:41:28"},
      {id: 122, user_id: 36, futsal_game_id: 12, team_id: 1, goal: 6, assist: 4, created_at: "2017-04-24 20:05:47", updated_at: "2017-04-25 11:37:37"},
      {id: 123, user_id: 1, futsal_game_id: 13, team_id: 4, goal: 4, assist: 2, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:27:49"},
      {id: 124, user_id: 32, futsal_game_id: 13, team_id: 3, goal: 3, assist: 3, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:26:36"},
      {id: 125, user_id: 4, futsal_game_id: 13, team_id: 4, goal: 5, assist: 2, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:27:21"},
      {id: 126, user_id: 21, futsal_game_id: 13, team_id: 4, goal: 1, assist: 6, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:28:43"},
      {id: 127, user_id: 42, futsal_game_id: 13, team_id: 3, goal: 1, assist: 1, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:29:21"},
      {id: 128, user_id: 35, futsal_game_id: 13, team_id: 3, goal: 7, assist: 1, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:25:53"},
      {id: 129, user_id: 43, futsal_game_id: 13, team_id: 4, goal: 2, assist: 0, created_at: "2017-04-27 06:56:11", updated_at: "2017-04-27 11:28:43"},
      {id: 130, user_id: 51, futsal_game_id: 13, team_id: 4, goal: 7, assist: 2, created_at: "2017-04-27 10:45:03", updated_at: "2017-04-27 11:23:15"},
      {id: 131, user_id: 52, futsal_game_id: 13, team_id: 3, goal: 1, assist: 0, created_at: "2017-04-27 10:45:03", updated_at: "2017-04-27 10:57:46"},
      {id: 132, user_id: 53, futsal_game_id: 13, team_id: 3, goal: 0, assist: 1, created_at: "2017-04-27 10:45:03", updated_at: "2017-04-27 11:16:03"},
      {id: 133, user_id: 12, futsal_game_id: 14, team_id: 3, goal: 9, assist: 2, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:57:59"},
      {id: 134, user_id: 32, futsal_game_id: 14, team_id: 4, goal: 4, assist: 2, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:52:51"},
      {id: 135, user_id: 1, futsal_game_id: 14, team_id: 3, goal: 2, assist: 1, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:54:35"},
      {id: 136, user_id: 14, futsal_game_id: 14, team_id: 4, goal: 3, assist: 2, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:57:31"},
      {id: 137, user_id: 11, futsal_game_id: 14, team_id: 4, goal: 1, assist: 3, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:50:41"},
      {id: 138, user_id: 16, futsal_game_id: 14, team_id: 4, goal: 3, assist: 1, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:56:03"},
      {id: 139, user_id: 31, futsal_game_id: 14, team_id: 4, goal: 3, assist: 2, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:57:32"},
      {id: 140, user_id: 4, futsal_game_id: 14, team_id: 3, goal: 1, assist: 3, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:56:33"},
      {id: 141, user_id: 39, futsal_game_id: 14, team_id: 3, goal: 6, assist: 0, created_at: "2017-05-02 06:52:09", updated_at: "2017-05-02 10:58:23"},
      {id: 142, user_id: 17, futsal_game_id: 14, team_id: 3, goal: 1, assist: 0, created_at: "2017-05-02 10:33:26", updated_at: "2017-05-02 10:44:08"},
      {id: 143, user_id: 1, futsal_game_id: 16, team_id: 4, goal: 5, assist: 2, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:23:59"},
      {id: 144, user_id: 21, futsal_game_id: 16, team_id: 4, goal: 1, assist: 4, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:30:38"},
      {id: 145, user_id: 4, futsal_game_id: 16, team_id: 4, goal: 4, assist: 3, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:28:45"},
      {id: 146, user_id: 51, futsal_game_id: 16, team_id: 3, goal: 1, assist: 0, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 10:57:59"},
      {id: 147, user_id: 40, futsal_game_id: 16, team_id: 3, goal: 3, assist: 1, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:31:03"},
      {id: 148, user_id: 17, futsal_game_id: 16, team_id: 3, goal: 5, assist: 0, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:26:47"},
      {id: 149, user_id: 43, futsal_game_id: 16, team_id: 4, goal: 7, assist: 1, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:28:45"},
      {id: 150, user_id: 36, futsal_game_id: 16, team_id: 4, goal: 4, assist: 3, created_at: "2017-05-04 06:48:04", updated_at: "2017-05-04 11:23:24"},
      {id: 151, user_id: 50, futsal_game_id: 15, team_id: 1, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:51:47"},
      {id: 152, user_id: 1, futsal_game_id: 15, team_id: 1, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:51:55"},
      {id: 153, user_id: 2, futsal_game_id: 15, team_id: 2, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:52:01"},
      {id: 154, user_id: 4, futsal_game_id: 15, team_id: 2, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:52:05"},
      {id: 155, user_id: 3, futsal_game_id: 15, team_id: 1, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:52:10"},
      {id: 156, user_id: 36, futsal_game_id: 15, team_id: 2, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:52:14"},
      {id: 157, user_id: 8, futsal_game_id: 15, team_id: 2, goal: 0, assist: 0, created_at: "2017-05-04 06:51:39", updated_at: "2017-05-04 06:52:20"},
      {id: 158, user_id: 49, futsal_game_id: 15, team_id: 1, goal: 0, assist: 0, created_at: "2017-05-04 06:51:40", updated_at: "2017-05-04 06:52:36"},
      {id: 159, user_id: 9, futsal_game_id: 15, team_id: 2, goal: 0, assist: 0, created_at: "2017-05-04 06:51:40", updated_at: "2017-05-04 06:52:24"},
      {id: 160, user_id: 54, futsal_game_id: 15, team_id: 1, goal: 0, assist: 0, created_at: "2017-05-04 10:38:59", updated_at: "2017-05-04 10:38:59"},
      {id: 161, user_id: 55, futsal_game_id: 16, team_id: 3, goal: 0, assist: 2, created_at: "2017-05-04 10:40:33", updated_at: "2017-05-04 11:10:20"},
      {id: 162, user_id: 56, futsal_game_id: 16, team_id: 3, goal: 1, assist: 0, created_at: "2017-05-04 10:40:33", updated_at: "2017-05-04 11:06:31"},
      {id: 163, user_id: 1, futsal_game_id: 17, team_id: 4, goal: 6, assist: 4, created_at: "2017-05-09 06:49:15", updated_at: "2017-05-09 22:31:27"},
      {id: 164, user_id: 32, futsal_game_id: 17, team_id: 3, goal: 3, assist: 2, created_at: "2017-05-09 06:49:15", updated_at: "2017-05-09 21:58:41"},
      {id: 165, user_id: 14, futsal_game_id: 17, team_id: 3, goal: 1, assist: 2, created_at: "2017-05-09 06:49:15", updated_at: "2017-05-09 22:22:45"},
      {id: 166, user_id: 11, futsal_game_id: 17, team_id: 4, goal: 3, assist: 3, created_at: "2017-05-09 06:49:15", updated_at: "2017-05-09 22:15:22"},
      {id: 167, user_id: 16, futsal_game_id: 17, team_id: 4, goal: 0, assist: 2, created_at: "2017-05-09 06:49:16", updated_at: "2017-05-09 21:59:21"},
      {id: 168, user_id: 31, futsal_game_id: 17, team_id: 3, goal: 2, assist: 2, created_at: "2017-05-09 06:49:16", updated_at: "2017-05-09 22:24:53"},
      {id: 169, user_id: 17, futsal_game_id: 17, team_id: 3, goal: 6, assist: 1, created_at: "2017-05-09 06:49:16", updated_at: "2017-05-09 22:24:53"},
      {id: 170, user_id: 15, futsal_game_id: 17, team_id: 4, goal: 6, assist: 0, created_at: "2017-05-09 06:49:16", updated_at: "2017-05-09 22:23:49"},
      {id: 171, user_id: 39, futsal_game_id: 17, team_id: 4, goal: 6, assist: 3, created_at: "2017-05-09 06:49:16", updated_at: "2017-05-09 22:31:27"},
      {id: 172, user_id: 19, futsal_game_id: 17, team_id: 3, goal: 3, assist: 1, created_at: "2017-05-09 06:49:16", updated_at: "2017-05-09 22:13:31"},
      {id: 173, user_id: 1, futsal_game_id: 18, team_id: 2, goal: 9, assist: 3, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 11:01:44"},
      {id: 174, user_id: 9, futsal_game_id: 18, team_id: 1, goal: 0, assist: 0, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 06:36:05"},
      {id: 175, user_id: 2, futsal_game_id: 18, team_id: 1, goal: 5, assist: 2, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 10:47:50"},
      {id: 176, user_id: 49, futsal_game_id: 18, team_id: 2, goal: 4, assist: 7, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 11:01:07"},
      {id: 177, user_id: 50, futsal_game_id: 18, team_id: 2, goal: 3, assist: 2, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 10:51:29"},
      {id: 178, user_id: 7, futsal_game_id: 18, team_id: 1, goal: 1, assist: 2, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 10:58:29"},
      {id: 179, user_id: 3, futsal_game_id: 18, team_id: 1, goal: 2, assist: 1, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 11:00:27"},
      {id: 180, user_id: 8, futsal_game_id: 18, team_id: 2, goal: 3, assist: 1, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 10:57:59"},
      {id: 181, user_id: 54, futsal_game_id: 18, team_id: 2, goal: 2, assist: 0, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 11:01:45"},
      {id: 182, user_id: 4, futsal_game_id: 18, team_id: 1, goal: 3, assist: 0, created_at: "2017-05-10 06:35:31", updated_at: "2017-05-10 10:52:52"},
      {id: 183, user_id: 1, futsal_game_id: 19, team_id: 4, goal: 7, assist: 5, created_at: "2017-05-11 06:45:34", updated_at: "2017-05-11 18:49:42"},
      {id: 184, user_id: 43, futsal_game_id: 19, team_id: 3, goal: 4, assist: 0, created_at: "2017-05-11 06:45:34", updated_at: "2017-05-11 18:44:55"},
      {id: 185, user_id: 40, futsal_game_id: 19, team_id: 4, goal: 5, assist: 1, created_at: "2017-05-11 06:45:35", updated_at: "2017-05-11 18:56:46"},
      {id: 186, user_id: 4, futsal_game_id: 19, team_id: 3, goal: 5, assist: 4, created_at: "2017-05-11 06:45:35", updated_at: "2017-05-11 18:57:17"},
      {id: 187, user_id: 36, futsal_game_id: 19, team_id: 3, goal: 5, assist: 4, created_at: "2017-05-11 06:45:35", updated_at: "2017-05-11 18:53:53"},
      {id: 188, user_id: 50, futsal_game_id: 19, team_id: 4, goal: 3, assist: 1, created_at: "2017-05-11 06:45:35", updated_at: "2017-05-11 18:58:03"},
      {id: 189, user_id: 11, futsal_game_id: 19, team_id: 4, goal: 1, assist: 0, created_at: "2017-05-11 06:45:35", updated_at: "2017-05-11 11:29:46"},
      {id: 190, user_id: 59, futsal_game_id: 19, team_id: 3, goal: 0, assist: 0, created_at: "2017-05-11 10:56:32", updated_at: "2017-05-11 10:56:38"},
      {id: 191, user_id: 58, futsal_game_id: 19, team_id: 3, goal: 5, assist: 2, created_at: "2017-05-11 10:56:32", updated_at: "2017-05-11 18:48:19"},
      {id: 192, user_id: 57, futsal_game_id: 19, team_id: 4, goal: 6, assist: 3, created_at: "2017-05-11 10:56:32", updated_at: "2017-05-11 18:56:46"},
      {id: 193, user_id: 1, futsal_game_id: 20, team_id: 4, goal: 3, assist: 5, created_at: "2017-05-15 10:53:47", updated_at: "2017-05-15 20:06:07"},
      {id: 194, user_id: 49, futsal_game_id: 20, team_id: 4, goal: 4, assist: 3, created_at: "2017-05-15 10:53:47", updated_at: "2017-05-15 20:03:17"},
      {id: 195, user_id: 50, futsal_game_id: 20, team_id: 4, goal: 6, assist: 4, created_at: "2017-05-15 10:53:47", updated_at: "2017-05-15 20:06:07"},
      {id: 196, user_id: 4, futsal_game_id: 21, team_id: 3, goal: 1, assist: 0, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:24:18"},
      {id: 197, user_id: 11, futsal_game_id: 21, team_id: 3, goal: 0, assist: 0, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 10:58:06"},
      {id: 198, user_id: 1, futsal_game_id: 21, team_id: 4, goal: 1, assist: 3, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:33:14"},
      {id: 199, user_id: 12, futsal_game_id: 21, team_id: 3, goal: 4, assist: 4, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:31:14"},
      {id: 200, user_id: 39, futsal_game_id: 21, team_id: 4, goal: 6, assist: 1, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:34:20"},
      {id: 201, user_id: 17, futsal_game_id: 21, team_id: 3, goal: 4, assist: 2, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:30:22"},
      {id: 202, user_id: 31, futsal_game_id: 21, team_id: 4, goal: 3, assist: 2, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:33:15"},
      {id: 203, user_id: 16, futsal_game_id: 21, team_id: 4, goal: 1, assist: 4, created_at: "2017-05-15 10:56:25", updated_at: "2017-05-15 20:34:20"},
      {id: 204, user_id: 15, futsal_game_id: 21, team_id: 3, goal: 6, assist: 2, created_at: "2017-05-15 10:56:26", updated_at: "2017-05-15 20:31:15"},
      {id: 205, user_id: 19, futsal_game_id: 21, team_id: 4, goal: 4, assist: 0, created_at: "2017-05-15 10:56:26", updated_at: "2017-05-15 20:24:54"},
      {id: 206, user_id: 60, futsal_game_id: 20, team_id: 4, goal: 2, assist: 1, created_at: "2017-05-15 11:13:28", updated_at: "2017-05-15 20:03:17"},
      {id: 207, user_id: 61, futsal_game_id: 20, team_id: 3, goal: 6, assist: 2, created_at: "2017-05-15 11:13:28", updated_at: "2017-05-15 20:04:47"},
      {id: 208, user_id: 63, futsal_game_id: 20, team_id: 3, goal: 0, assist: 0, created_at: "2017-05-15 11:13:28", updated_at: "2017-05-15 11:14:13"},
      {id: 209, user_id: 64, futsal_game_id: 20, team_id: 3, goal: 3, assist: 3, created_at: "2017-05-15 11:13:28", updated_at: "2017-05-15 20:04:47"},
      {id: 210, user_id: 62, futsal_game_id: 20, team_id: 3, goal: 3, assist: 3, created_at: "2017-05-15 11:13:28", updated_at: "2017-05-15 20:07:04"},
      {id: 211, user_id: 65, futsal_game_id: 20, team_id: 3, goal: 9, assist: 1, created_at: "2017-05-15 11:13:29", updated_at: "2017-05-15 20:07:04"},
      {id: 212, user_id: 1, futsal_game_id: 22, team_id: 4, goal: 5, goal_with_assist: nil, goal_without_assist: nil, assist: 2, created_at: "2017-05-16 19:53:03", updated_at: "2017-05-17 20:14:16"},
      {id: 213, user_id: 65, futsal_game_id: 22, team_id: 4, goal: 5, goal_with_assist: nil, goal_without_assist: nil, assist: 5, created_at: "2017-05-16 19:53:03", updated_at: "2017-05-17 20:15:34"},
      {id: 214, user_id: 62, futsal_game_id: 22, team_id: 4, goal: 2, goal_with_assist: nil, goal_without_assist: nil, assist: 5, created_at: "2017-05-16 19:53:04", updated_at: "2017-05-17 10:57:48"},
      {id: 215, user_id: 61, futsal_game_id: 22, team_id: 4, goal: 6, goal_with_assist: nil, goal_without_assist: nil, assist: 2, created_at: "2017-05-16 19:53:04", updated_at: "2017-05-17 11:31:38"},
      {id: 216, user_id: 4, futsal_game_id: 22, team_id: 3, goal: 2, goal_with_assist: nil, goal_without_assist: nil, assist: 0, created_at: "2017-05-16 19:53:04", updated_at: "2017-05-17 20:10:39"},
      {id: 217, user_id: 42, futsal_game_id: 22, team_id: 4, goal: 6, goal_with_assist: nil, goal_without_assist: nil, assist: 5, created_at: "2017-05-16 19:53:04", updated_at: "2017-05-17 20:14:59"},
      {id: 218, user_id: 40, futsal_game_id: 22, team_id: 3, goal: 7, goal_with_assist: nil, goal_without_assist: nil, assist: 2, created_at: "2017-05-16 19:53:04", updated_at: "2017-05-17 20:10:40"},
      {id: 219, user_id: 66, futsal_game_id: 22, team_id: 3, goal: 2, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 10:51:33", updated_at: "2017-05-17 20:13:50"},
      {id: 220, user_id: 67, futsal_game_id: 22, team_id: 3, goal: 5, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 10:51:33", updated_at: "2017-05-17 20:05:08"},
      {id: 221, user_id: 68, futsal_game_id: 22, team_id: 3, goal: 2, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 10:51:33", updated_at: "2017-05-17 20:15:34"}
      {id: 222, user_id: 1, futsal_game_id: 23, team_id: 4, goal: 2, goal_with_assist: nil, goal_without_assist: nil, assist: 5, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:14:51"},
      {id: 223, user_id: 40, futsal_game_id: 23, team_id: 4, goal: 4, goal_with_assist: nil, goal_without_assist: nil, assist: 0, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:05:12"},
      {id: 224, user_id: 43, futsal_game_id: 23, team_id: 4, goal: 3, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:09:03"},
      {id: 225, user_id: 58, futsal_game_id: 23, team_id: 4, goal: 1, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:11:39"},
      {id: 226, user_id: 17, futsal_game_id: 23, team_id: 4, goal: 2, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:14:52"},
      {id: 227, user_id: 49, futsal_game_id: 23, team_id: 3, goal: 3, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:14:23"},
      {id: 228, user_id: 50, futsal_game_id: 23, team_id: 3, goal: 3, goal_with_assist: nil, goal_without_assist: nil, assist: 1, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:10:05"},
      {id: 229, user_id: 57, futsal_game_id: 23, team_id: 3, goal: 4, goal_with_assist: nil, goal_without_assist: nil, assist: 2, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:12:29"},
      {id: 230, user_id: 4, futsal_game_id: 23, team_id: 3, goal: 1, goal_with_assist: nil, goal_without_assist: nil, assist: 3, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:12:29"},
      {id: 231, user_id: 42, futsal_game_id: 23, team_id: 3, goal: 5, goal_with_assist: nil, goal_without_assist: nil, assist: 0, created_at: "2017-05-17 21:09:57", updated_at: "2017-05-18 18:14:23"}
    ])
    HighlightType.create!([
      {id: 1, name: "Blessure", icon: "ambulance", created_at: "2017-03-30 21:58:42", updated_at: "2017-03-30 21:58:55"}
    ])
    Highlight.create!([
      {id: 1, name: "", highlight_type_id: 1, author_id: nil, victim_id: 6, time: 2197, futsal_game_id: 1, team_id: 1, created_at: "2017-03-30 22:14:02", updated_at: "2017-03-30 22:26:12"},
      {id: 2, name: "", highlight_type_id: 1, author_id: nil, victim_id: 8, time: 2182, futsal_game_id: 1, team_id: 2, created_at: "2017-03-30 22:15:36", updated_at: "2017-03-30 22:15:36"},
      {id: 3, name: "", highlight_type_id: 1, author_id: 1, victim_id: 18, time: 3138, futsal_game_id: 4, team_id: 4, created_at: "2017-04-04 15:47:28", updated_at: "2017-04-04 15:47:28"},
      {id: 4, name: "", highlight_type_id: 1, author_id: 1, victim_id: 12, time: 2190, futsal_game_id: 4, team_id: 4, created_at: "2017-04-04 16:06:05", updated_at: "2017-04-04 16:06:05"},
      {id: 5, name: "", highlight_type_id: 1, author_id: nil, victim_id: 8, time: 2140, futsal_game_id: 12, team_id: 1, created_at: "2017-04-27 11:37:19", updated_at: "2017-04-27 11:40:46"},
      {id: 6, name: "", highlight_type_id: 1, author_id: nil, victim_id: 51, time: 2208, futsal_game_id: 16, team_id: 3, created_at: "2017-05-04 11:11:21", updated_at: "2017-05-04 11:12:51"}
    ])
  end
end