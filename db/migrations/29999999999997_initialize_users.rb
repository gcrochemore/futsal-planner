class InitializeData < ActiveRecord::Migration[5.0]
  def change
    Role.create!([
      {id: 1, name: "admin", resource_type: nil, resource_id: nil, created_at: "2017-04-01 20:02:38", updated_at: "2017-04-01 20:02:38"},
      {id: 2, name: "player", resource_type: nil, resource_id: nil, created_at: "2017-04-01 20:22:01", updated_at: "2017-04-01 20:22:01"}
    ])
    Nationality.create!([
      {id: 1, name: "France", abbreviation: "FR", picture: "french.png", created_at: "2017-03-19 20:23:10", updated_at: "2017-03-19 20:23:10"},
      {id: 2, name: "Gabon", abbreviation: "GB", picture: "gabon.png", created_at: "2017-03-30 11:29:25", updated_at: "2017-03-30 11:29:25"}
    ])
    Company.create!([
      {id: 1, name: "TRSB", picture: "trsb.png", email_mask: "[a-z]@trsb.net$", created_at: "2017-03-19 20:23:10", updated_at: "2017-03-19 20:23:10"},
      {id: 2, name: "Sopra", picture: "sopra.png", email_mask: "", created_at: "2017-03-30 11:29:25", updated_at: "2017-03-30 11:29:25"},
      {id: 3, name: "Veolia", picture: "veolia.png", email_mask: "", created_at: "2017-03-30 11:39:31", updated_at: "2017-03-30 11:39:31"},
      {id: 4, name: "Enovea", picture: "enovea.png", email_mask: "[a-z]@enovea.net$", created_at: "2017-03-30 11:39:31", updated_at: "2017-03-30 11:39:31"},
      {id: 5, name: "Attineos", picture: "attineos.png", email_mask: "[a-z]@attineos.net$", created_at: "2017-03-30 11:39:31", updated_at: "2017-03-30 11:39:31"}
    ])
    Team.create!([
      {id: 1, name: "Trsb#1", company_id: 1, created_at: "2017-03-19 20:49:58", updated_at: "2017-03-19 20:49:58"},
      {id: 2, name: "TRSB#2", company_id: 1, created_at: "2017-03-19 20:50:19", updated_at: "2017-03-19 20:50:19"},
      {id: 3, name: "Team#1", company_id: nil, created_at: "2017-03-30 11:12:31", updated_at: "2017-03-30 11:12:31"},
      {id: 4, name: "Team#2", company_id: nil, created_at: "2017-03-30 11:12:43", updated_at: "2017-03-30 11:12:43"},
      {id: 5, name: "Orange", company_id: nil, created_at: "2017-03-30 21:27:29", updated_at: "2017-03-30 21:27:42"},
      {id: 6, name: "Jaune", company_id: nil, created_at: "2017-03-30 21:28:02", updated_at: "2017-03-30 21:28:02"},
      {id: 7, name: "Team#3", company_id: nil, created_at: "2017-06-12 06:50:14", updated_at: "2017-06-12 06:50:14"},
      {id: 8, name: "Team#4", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 9, name: "Team#5", company_id: nil, created_at: "2017-06-12 06:50:14", updated_at: "2017-06-12 06:50:14"},
      {id: 10, name: "Team#6", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 11, name: "Mercredi#1", company_id: nil, created_at: "2017-06-12 06:50:14", updated_at: "2017-06-12 06:50:14"},
      {id: 12, name: "Mercredi#2", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 13, name: "Sca'Friends#1", company_id: nil, created_at: "2017-06-12 06:50:14", updated_at: "2017-06-12 06:50:14"},
      {id: 14, name: "Sca'Friends#2", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 15, name: "WassimFriends#1", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 16, name: "Dimanche#1", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 17, name: "Dimanche#2", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 18, name: "RemiFriends#1", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 19, name: "RemiFriends#2", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 20, name: "BenjFriends#1", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 21, name: "benjFriends#2", company_id: nil, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 22, name: "Attineos#1", company_id: 5, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"},
      {id: 23, name: "Attineos#2", company_id: 5, created_at: "2017-06-12 06:50:32", updated_at: "2017-06-12 06:50:32"}
    ])
    FutsalPosition.create!([
      {id: 1, name: "Gardien de But", average_goal_multiplier: 1, average_assist_multiplier: 2.5, average_goal_against_multiplier: 2, abbreviation: "GB", created_at: "2017-06-17 10:01:19", updated_at: "2017-06-17 10:01:19"},
      {id: 2, name: "Défenseur", average_goal_multiplier: 2, average_assist_multiplier: 3, average_goal_against_multiplier: 0.5, abbreviation: "DC", created_at: "2017-06-17 10:01:31", updated_at: "2017-06-17 10:01:31"},
      {id: 3, name: "Milieu", average_goal_multiplier: 1.5, average_assist_multiplier: 3.5, average_goal_against_multiplier: 0.5, abbreviation: "MC", created_at: "2017-06-17 10:01:40", updated_at: "2017-06-17 10:01:40"},
      {id: 4, name: "Attaquant", average_goal_multiplier: 1, average_assist_multiplier: 4, average_goal_against_multiplier: 0.5, abbreviation: "AT", created_at: "2017-06-17 10:01:40", updated_at: "2017-06-17 10:01:40"},

      {id: 100, name: "Remplacant", average_goal_multiplier: 4, average_assist_multiplier: 6, average_goal_against_multiplier: 0.25, abbreviation: "RP", created_at: "2017-06-17 10:01:40", updated_at: "2017-06-17 10:01:40"}
    ])

    user = User.new({id: 1, email: "guillaume.crochemore@gmail.com", futsal_position_id: 3, picture: "forlan.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$.RB/xnqEJnS1GE2GAhKDj.HbSzMJ7hJlZNGInyXDvzgtwkGON.Stq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-03-28 18:26:46", last_sign_in_at: "2017-03-28 18:18:11", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "yj6UY5Eax25RzrcWfXDx", confirmed_at: "2017-03-19 18:31:12", confirmation_sent_at: "2017-03-19 18:30:13", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "C", company_id: 1, created_at: "2017-03-19 18:30:13", updated_at: "2017-03-28 18:26:46"})
    user.facebook_uid = "10215672130060674"
    user.google_email = "guillaume.crochemore@gmail.com"
    user.linkedin_email = "guillaume.crochemore@gmail.com"
    user.twitter_uid = "319037600"
    user.skip_confirmation!
    user.save!
    user.add_role "admin"

    user = User.new({id: 2, email: "mederic.delamare@trsb.net", futsal_position_id: 3, picture: "ronaldo.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$BHWnBiV.X7PT8v2VwJo2T.xlUEgc.SVyLz6s1YqKR2NzcVGRq26US", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "3X1WPAY3s9iYGoz-mx5s", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:16:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mederic", last_name: "D", company_id: 1, created_at: "2017-03-28 18:16:33", updated_at: "2017-03-28 18:16:33"})
    user.facebook_uid = "2010743552288674"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 3, email: "gwennael.jean@gmail.com", futsal_position_id: 1, picture: "baggio.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$qb/ZpeDN3EaLbncjHbFyzebrJcBZNKydsxt03amDhF.tFTz1fdEHm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "xB5rumuzr4me-pUGa1Hs", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:46:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gwennael", last_name: "J", company_id: 1, created_at: "2017-03-28 18:46:41", updated_at: "2017-03-28 18:46:41"})
    user.google_email = "gwennael.jean@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 4, email: "Souleymane.NDIAYE@trsb.net", futsal_position_id: 3, picture: "lacazette.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$rxNP./jJQ3Xtfp0kj1dEfufj9zSbixC/IhTbLFlmQAqCm6OBK12dq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L8soofxkhpXzmXiVjMSq", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:47:39", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Souleymane", last_name: "N", company_id: 1, created_at: "2017-03-28 18:47:39", updated_at: "2017-03-28 18:47:39"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 5, email: "Guillaume.SIMEON@trsb.net", futsal_position_id: 3, picture: 'delgado.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$DtG4Uga76KgDEcN0SxsFd.JW/mJmwnj/951fmhzKfYcFSqC2EnVVi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "m_qto1WHUpdEey8SFX-y", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:53:30", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "S", company_id: 1, created_at: "2017-03-28 18:53:30", updated_at: "2017-03-28 18:53:30"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 6, email: "Francois.LEPORCQ@trsb.net", futsal_position_id: 2, picture: "donovan.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Nc0W5856pGlJgOitDsrYzeCxQ3bOi9EroDVNkPnrK1dNKpsJBrFdq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "3JZh3useeNssxUyKiixb", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:54:19", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Francois", last_name: "L", company_id: 1, created_at: "2017-03-28 18:54:19", updated_at: "2017-03-28 18:54:19"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 7, email: "Etienne.DUTET@trsb.net", futsal_position_id: 3, picture: "rooney.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$NchIz1w1.hjyTMuVE3.sEui40CTK38WjIfqiRh0UnIEexPLfxT8By", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "jKx7RcKNnHa2EXTNKk4D", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:46:33", unconfirmed_email: "etienned@etienned.fr", failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Etienne", last_name: "D", company_id: 1, created_at: "2017-03-28 18:54:47", updated_at: "2017-03-30 11:46:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 8, email: "Robin.DUMENIL@trsb.net", futsal_position_id: 4, picture: "xabi-alonso.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$oHVLnON86Xvybmo.UB5GCOUP4xLpihrXsr56/ed1BcZifPNTA2J3a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "dnHBzMBdzBxztfwq2T9r", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:56:14", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Robin", last_name: "D", company_id: 1, created_at: "2017-03-28 18:56:14", updated_at: "2017-03-28 18:56:14"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 9, email: "Clement.JEHANNET@trsb.net", futsal_position_id: 3, picture: "bernardo-silva.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$7cxKV6oDrp7gsXs.0x6csuFIy5NifWRLruaZxNqE9RFA6cBwILjpe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "oC3sxtXimtAXzauJ6zRB", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:56:51", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Clement", last_name: "J", company_id: 1, created_at: "2017-03-28 18:56:51", updated_at: "2017-03-28 18:56:51"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 10, email: "Luis.PINEU@trsb.net", futsal_position_id: 2, picture: "figo.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$h4S28RAUYuWtl.kc5I45YeZ1Y/UiiL8iAKYGJv.yN31BqlrV/8aKS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "TisRoFc3ueoSoFsVFJsC", confirmed_at: nil, confirmation_sent_at: "2017-03-28 19:58:32", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Luis", last_name: "P", company_id: 1, created_at: "2017-03-28 19:58:32", updated_at: "2017-03-28 19:58:32"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 11, email: "arthur.lefebvre76@gmail.com", futsal_position_id: 3, picture: "berbatov.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$d20peo0BHeXoEp0H1uz1z.Yp7s28AqODJLacmtiXOziaswX7T40B2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "xSRmptycyfwph7iRfNRz", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:37:23", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arthur", last_name: "L", company_id: 2, created_at: "2017-03-30 11:37:23", updated_at: "2017-03-30 11:37:23"})
    user.google_email = "arthur.lefebvre76@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 12, email: "etienneb@etienneb.fr", futsal_position_id: 4, picture: "butelle.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$uKnw5Y9RLiXssCO7WexSv.3.jcZZzm43OU90/jJp2wOPdE0R4BuVq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "NBxrAKQms5zTSzbtALxp", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:37:49", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Etienne", last_name: "B", company_id: nil, created_at: "2017-03-30 11:37:49", updated_at: "2017-03-30 11:37:49"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 13, email: "jf@jf.fr", futsal_position_id: 3, picture: "lampard.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$d0jfmpI6LnThdTZZkGdqNOyC6/GaHJinN.UwatzRCDkUlZ.j0Rv0e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "UwLLgEaaQJfexG5Gv87z", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:38:16", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jean-Francois", last_name: "D", company_id: nil, created_at: "2017-03-30 11:38:16", updated_at: "2017-03-30 11:38:16"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 14, email: "alex@alex.fr", futsal_position_id: 3, picture: 'benzema.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$w7vVajfbU9Jk3NflfyPN9ORpQcjskohYRRfZ2qt.p/DZOHYPQU5vu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "rNS5Xd-ueZToZuxabiys", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:38:40", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alexandre", last_name: "L", company_id: nil, created_at: "2017-03-30 11:38:40", updated_at: "2017-03-30 11:38:40"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 15, email: "romain@romain.fr", futsal_position_id: 3, picture: "iniesta.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$CpKEpTji9xewt7h5ycs6q.cLb/DjmtNxULbiPQ/Cx72zIMy/Pqb0S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "cwgqqvn4s8D2pqbKds9x", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:40:18", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romain", last_name: "L", company_id: 3, created_at: "2017-03-30 11:40:18", updated_at: "2017-03-30 11:40:18"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 16, email: "quentinl@quentinl.fr", futsal_position_id: 2, picture: 'jordi-alba.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$j/bVnEbM6kf7.k25HdqlUeicWS9.xfR7.drZcub2Sy.MTB7sl13jS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "9xzj7NQ57B18qRZx5DEn", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:41:03", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Quentin", last_name: "L", company_id: nil, created_at: "2017-03-30 11:41:03", updated_at: "2017-03-30 11:41:03"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 17, email: "thomasl@thomasl.fr", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$NqCyNvPyhOqiMP38R/X5aeKUqUs6/SpGNaU00dr3T8sXJ999p62uy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "RDay1Hswy6p4xhTUjfQ4", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:42:46", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "L", company_id: nil, created_at: "2017-03-30 11:42:46", updated_at: "2017-03-30 11:42:46"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 18, email: "thomasga@thomasga", futsal_position_id: 3, picture: 'mascherano.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$njsqgpSsic71IwtDjgzSOOd4/lo3hZ3q1.TiJCpmoADEIVyWWPVQW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "ZL4x5GXyw_ANvxy8nfbL", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:43:11", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "Ga", company_id: nil, created_at: "2017-03-30 11:43:11", updated_at: "2017-03-30 11:43:11"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 19, email: "vincent@vincentg", futsal_position_id: 4, picture: 'silva.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Nupn35Hp06Fa362xKcU6Ke4ygG.QMU6sDPkA4.uOYY0R6F.VjQB7m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "Muv-5rP-Jpys_XMgbYnM", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:44:56", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "G", company_id: nil, created_at: "2017-03-30 11:44:56", updated_at: "2017-03-30 11:44:56"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 20, email: "jeremine@jeremine", futsal_position_id: 2, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXeTq7QBc1w_-xp5Axg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jeremi", last_name: "Ne", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 21, email: "thomass@thomass.fr", futsal_position_id: 2, picture: 'didot.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$agnDAYp2jTk4tVAT7x8Ie.o5fsfiR9.Sg2kMZKWID2h3VXZK8WcLe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "mgF5zuEPACGyyi_CJYyz", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:04", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "S", company_id: nil, created_at: "2017-03-30 21:26:04", updated_at: "2017-03-30 21:26:04"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 22, email: "paull@paull.fr", futsal_position_id: 2, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yD1mtyCHcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "L", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 23, email: "simonl@simonl.fr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$AQrSHo6O1XUu.gk3FLamteGrKmLuBV8Fn3GLilyRYqUpVMRCCSB9e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "fK49QgTdgP_S21mJCTTx", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:32:08", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Simon", last_name: "L", company_id: nil, created_at: "2017-03-30 21:32:08", updated_at: "2017-03-30 21:32:08"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 24, email: "sebo@sebo.fr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lY40YwgIsFiWHStGUURCHuocT/tAg432.Jje50g4HxAdLUMGpkTry", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdY36q1ZKdTZqstNqfz1", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:32:36", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Seb", last_name: "O", company_id: nil, created_at: "2017-03-30 21:32:36", updated_at: "2017-03-30 21:32:36"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 25, email: "charlesc@charlesc.fr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$qLw8LmaZ3XKd6VatOYv9CeQixurbqEllbGviSbOjDzeaA688P5E0.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "zEjE1LtjsdP4MSXpikGP", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:33:25", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Charles", last_name: "C", company_id: nil, created_at: "2017-03-30 21:33:25", updated_at: "2017-03-30 21:33:25"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 26, email: "cyrilm@cyrilm.foot", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$LqtNt./9yxm4/OifHuxebup3B43JnECfqdUzT51E5p/.MqpCqGZ1K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "kbxdqrynH99S9EaCsuuG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:34:12", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Cyril", last_name: "M", company_id: nil, created_at: "2017-03-30 21:34:12", updated_at: "2017-03-30 21:34:12"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 27, email: "vincentli@vincentli.foot", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$9uxhcAwAuz7PoXKPSJEpceyeOW2nmUYMc1eZg9g.tF9cCAlKHZO1W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "vUmSz-pWtwS9F6heZdN7", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:34:48", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "Li", company_id: nil, created_at: "2017-03-30 21:34:48", updated_at: "2017-03-30 21:34:48"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 28, email: "remy@remy.foot", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GnvzYsC/fSAc9iwsAPryrOBs34QbOQylJC4zVjFwD.rhNMmm2nvs.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "XyQinAhmn4YEQDZGAQ_i", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:35:46", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Remy", last_name: "", company_id: nil, created_at: "2017-03-30 21:35:46", updated_at: "2017-03-30 21:35:46"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 29, email: "antoinel@antoinel.foot", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$WCQjMrJ12aVxXzbdXlkDle7b2eaaNqIJXA1UzVEVGR527HG5RRMCm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "2nXLmnuDKzinzthG51q6", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:37:23", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Antoine", last_name: "L", company_id: nil, created_at: "2017-03-30 21:37:23", updated_at: "2017-03-30 21:37:23"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 30, email: "paulj@paulj.fr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$8qS1apY.SAodx7uFNnY3jegLCiepyA7HpgNKmKsXBdFy2LaXqekEu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "b1EgYfJFRMk9MMyrPABf", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:41:19", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "J", company_id: nil, created_at: "2017-04-01 20:41:19", updated_at: "2017-04-01 20:41:19"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 31, email: "julienl@julienl.fr", futsal_position_id: 2, picture: 'mkhitaryan.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GzJfN68J3/l6ULxC.LmpfuU1FuhxZrlg3wgI6FlXHiqDTzcOwVv3q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "-4536ZXDuZXyXrr3w-1m", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:52:02", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Julien", last_name: "L", company_id: nil, created_at: "2017-04-01 20:52:02", updated_at: "2017-04-01 20:52:02"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 32, email: "guillaumebea@guillaumebea", picture: 'sergio-busquets.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GRdVVS.6Bs9cZQr6.bL0a.0r/EW7mZdwgnI4pRca1k7GL984kpBwm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "_U_155xkiu56-RDAtzod", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:52:32", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Bea", company_id: nil, created_at: "2017-04-01 20:52:32", updated_at: "2017-04-01 20:52:32"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 33, email: "arthur.delamare@trsb.net", futsal_position_id: 2, picture: "mathieu.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$4LWPu7ZXmFkpopkfGHrJ2.TQIsthvRxWAyzPFep422SWRGxbTBrrm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "KYQoGCkuUNYmxe9Sfnn_", confirmed_at: nil, confirmation_sent_at: "2017-04-01 21:35:47", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arthur", last_name: "D", company_id: 1, created_at: "2017-04-01 21:35:47", updated_at: "2017-04-01 21:35:47"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 34, email: "gabinb@gabinb.fr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$zm24mQtp3CdfY9NrH2lj5e1Zw1YmUnAh3oDHuuHJmHmPvBBAh1BOi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "Je1RQNxjHkr5oEjBiMwd", confirmed_at: nil, confirmation_sent_at: "2017-04-10 11:10:25", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gabin", last_name: "G", company_id: nil, created_at: "2017-04-10 11:10:25", updated_at: "2017-04-10 11:10:25"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 35, email: "vincentla@vincentla.fr", futsal_position_id: 4, picture: 'thauvin.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$oMYvlsVLQ6iOzfebjkCh2uM19uOdcSp/XW8bZuU6RJzSNwMQNgbQK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "MFmfzi2Yf_GxWyf7CZrY", confirmed_at: nil, confirmation_sent_at: "2017-04-10 11:26:31", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "La", company_id: nil, created_at: "2017-04-10 11:26:31", updated_at: "2017-04-10 11:26:31"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 36, email: "mathieum@mathieum", futsal_position_id: 4, picture: 'douglas-costa.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$CEOEhACMHcg7qaZ5Ll7JrOvZQ1Xxj5IZjRwr4ooTv8ReAnPZIAoTu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LCsGMurr4z6Nwkk7SSFu", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:01:28", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mathieu", last_name: "M", company_id: nil, created_at: "2017-04-10 19:01:28", updated_at: "2017-04-10 19:01:28"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 37, email: "pablop@pablop", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Kh0J3iv2cyDod8t4OKWeg.OpFkxfXtknSYGiGHUvj.qHAlbZYoXk.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "hcFNne-qUzcBdLTp8NrE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:01:58", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Pablo", last_name: "P", company_id: nil, created_at: "2017-04-10 19:01:58", updated_at: "2017-04-10 19:01:58"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 38, email: "Emmanuel.ELIES@trsb.net", futsal_position_id: 3, picture: "del-piero.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UDH73mxUA5n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Emmanuel", last_name: "E", company_id: 1, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 39, email: "maximeb@maximeb", futsal_position_id: 4, picture: 'fabregas.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$Kh0J3iv2cyDod8t4OKWeg.OpFkxfXtknSYGiGHUvj.qHAlbZYoXk.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "hcFNne-qUzcBdLTp9NrE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:01:58", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Maxime", last_name: "B", company_id: nil, created_at: "2017-04-10 19:01:58", updated_at: "2017-04-10 19:01:58"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 40, email: "jauffrey.darlet@gmail.com", futsal_position_id: 4, picture: 'aguero.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UDH73mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jauffrey", last_name: "D", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.google_email = "jauffrey.darlet@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 41, email: "aureliens@aureliens", futsal_position_id: 2, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgxdDH73mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Aurelien", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 42, email: "alainh@alainh", picture: 'kante.png', futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreD3mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alain", last_name: "H", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 43, email: "julienreviron@hotmail.fr", futsal_position_id: 3, picture: 'schneiderlin.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4U73azmxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Julien", last_name: "R", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 44, email: "arnaudp@arnaudp", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgxdDH73mxUEZPMMx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arnaud", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 45, email: "thibaultl@thibaultl", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UAZD3mxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibault", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 46, email: "louisd@louisd", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4U73aDPxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Louis", last_name: "D", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 47, email: "jonasc@jonasc", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreDHSxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jonas", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 48, email: "guillaumel@guillaumel", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 49, email: "thibault.neel@gmail.com", futsal_position_id: 3, picture: 'crouch.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UreCVSxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibault", last_name: "N", company_id: 4, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.google_email = "thibault.neel@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 50, email: "francois.goupil@live.fr", futsal_position_id: 3, picture: 'flamini.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Francois", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 51, email: "saunier.romain1@gmail.com", futsal_position_id: 3, picture: 'rakitic.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3UImxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romain", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 52, email: "greg@greg", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgERE3azmxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Greg", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 53, email: "jean-clements@jean-clements", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAMO4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jean-Clément", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 54, email: "robinm@robinm", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jRERE3UImxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Robin", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 55, email: "baptistea@baptistea", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jgERE3azmxUAUI4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Baptiste", last_name: "A", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 56, email: "morgana@morgana", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAPM4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Morgan", last_name: "A", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 57, email: "charlesp@charlesp", picture: 'konolyanka.png', futsal_position_id: 2, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Charles", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 58, email: "maiko76@sfr.fr", futsal_position_id: 3, picture: "jallet.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RTRazmxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mickael", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 59, email: "johang@johang", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jPORE3azmxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Johan", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 60, email: "anthonyl@anthonyl", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jRERE767mxUAJH4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Anthony", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 61, email: "thm.mallard@gmail.com", picture: 'gignac.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW63EERE3azmxUAUI4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.google_email = "thm.mallard@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 62, email: "benjamint@benjamint", futsal_position_id: 4, picture: 'higuain.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3az098APM4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Benjamin", last_name: "T", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 63, email: "christopherb@christopherb", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RE3azmxPMERZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Christopher", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 64, email: "renanc@renanc", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RTRaPMLUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Renan", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 65, email: "quentinp@quentinp", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9MPOORE3amxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Quentin", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 66, email: "mathieu.bronchain@gmail.com", picture: 'isco.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4REPNRxPMERZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mathieu", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.google_email = "mathieu.bronchain@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 67, email: "jordih@jordih", picture: 'mario-suarez.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4RTRaPMLUPMLZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jordi", last_name: "H", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 68, email: "abrahamo@abrahamo", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNBF3OORE3amxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Abraham", last_name: "O", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 69, email: "jeanmarc@jeanmarc", futsal_position_id: 4, picture: 'lalas.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9PNRTERaPMLUPMLZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jean-Marc", last_name: "T", company_id: 1, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 70, email: "Thierry.SICARD@trsb.net", picture: 'petit.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNBF3OORE3amxPMEHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thierry", last_name: "S", company_id: 1, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 71, email: "lotfim@lotfim", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNBFMRBREMFTxUAPHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Lotfi", last_name: "M", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 72, email: "colinv@colinv", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9PNRTERaPMLURTSZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Colin", last_name: "V", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 73, email: "bastienj@bastienj", futsal_position_id: 3, picture: "podolski.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNBF3OOREMARxPMEHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Bastien", last_name: "J", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 74, email: "williamc@williamc", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNMF7OOREMARxPMEHZPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "William", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 75, email: "florentp@florentp", futsal_position_id: 3, picture: "gourcuff.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNMF7OOREMARxPMPRTPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Florent", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 76, email: "thomasgo@thomasgo", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNMF7OOREMpmFPMPRTPM", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "Go", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 77, email: "simonle@simonle", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNMF7OOREMpmFPMPRBTE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Simon", last_name: "Le", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 78, email: "ludovics@ludivics", futsal_position_id: 2, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sNNDPOOREMpmFPMPRBTE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Ludovic", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 79, email: "Mihai.HODOROGEA@trsb.net", futsal_position_id: 2, picture: 'vazquez.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOOREMpmFPMPRBTE", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mihai", last_name: "H", company_id: 1, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 80, email: "antoinephi@antoinephi", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOOREMpmFPMPRNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Antoine", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 81, email: "yanns@yanns", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOOREMpmFPMFZNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Yann", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 82, email: "remic@remic", futsal_position_id: 1, picture: 'david_luiz.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOUYDMpmFPMFZNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Remi", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 83, email: "borisr@borisr", futsal_position_id: 4, picture: 'glik.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOUMFDpmFPMFZNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Boris", last_name: "R", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 84, email: "Emmanuel.NTAHINTA@trsb.net", futsal_position_id: 3, nationality_id: 2, picture: 'yaya-toure.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOUMFDpmnfREZNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Emmanuel", last_name: "N", company_id: 1, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 85, email: "guillaumebrn@guillaumebrn", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOUMFDpmnfNSPNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Brn", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 86, email: "corradoc@corradoc", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOUMFDpmnfREZPFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Corrado", last_name: "C", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 87, email: "bertinguillaume.bg@gmail.com", futsal_position_id: 3, picture: 'kane.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOMNDDpmnfNSPNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Ber", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.google_email = "bertinguillaume.bg@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 88, email: "romainf@romainf", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTSDPOUMFDpmnPSGfPFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romain", last_name: "F", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 89, email: "christophed@christophed", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTPMDOMNDDpmnfNSPNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Christophe", last_name: "D", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 90, email: "loicl@loicl", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTPMDOMAfTpmnfNSPNFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Loic", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 91, email: "jamesg@jamesg", futsal_position_id: 3, picture: 'ljungberg.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$BHWnBiV.X7PT8v2VwJo2T.xlUEgc.SVyLz6s1YqKR2NzcVGRq26US", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "3XPSGAY3s9iYGoz-mx5s", confirmed_at: nil, confirmation_sent_at: "2017-03-28 18:16:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "James", last_name: "G", company_id: 1, created_at: "2017-03-28 18:16:33", updated_at: "2017-03-28 18:16:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 92, email: "geofr@geofr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTPMDOMAfTpmnfDzANFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Geoffray", last_name: "R", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 93, email: "kevinb@kevinb", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTPdvRMfNQpmnfDzANFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Kevin", last_name: "B", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 94, email: "enzop@enzop", futsal_position_id: 4, picture: 'ozil.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTdUpRMAfTpmnfDzANFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Enzo", last_name: "P", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 95, email: "georgesl@georgesl", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTdUfOmAfTpmnfDzANFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Georges", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 96, email: "benoitl@benoitl", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTdUfOmAfTpmnfDmRSFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Benoit", last_name: "L", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 97, email: "davidg@davidg", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PTdcMdmAfTpmnfDmRSFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "David", last_name: "G", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 98, email: "Maxime.TANESIE@trsb.net", futsal_position_id: 2, picture: "van-der-sar.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PbFrMdmAfTpmnfDmRSFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Maxime", last_name: "T", company_id: 1, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 99, email: "andread@andread", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PbFrMdmAfTpmnfDsntFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Andrea", last_name: "D", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 100, email: "tristans@tristans", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PbFxpZmAfTpmnfDsntFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Tristan", last_name: "S", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 101, email: "jeremina@jeremina", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXdxq7QBc1w_-xp5Axg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jeremi", last_name: "Na", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 102, email: "redam@redam", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXcPD7QBc1w_-xp5Axg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Reda", last_name: "M", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 103, email: "wassimt@wassimt", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXdxq7QBc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Wassim", last_name: "T", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 104, email: "edouardb@edouardb", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXdxpM0Bc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Edouard", last_name: "B", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 105, email: "damiend@damiend", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "PbFxpZmAfdsanfDsntFR", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Damien", last_name: "D", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 106, email: "loicp@loicp", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cmpfq7QBc1w_-xp5Axg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Loic", last_name: "P", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 107, email: "kevins@kevins", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXbFD7QBc1w_-xp5Axg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Kevin", last_name: "S", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 108, email: "romainv@romainv", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXdxq7QBc1w_-mpqDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romain", last_name: "V", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 109, email: "rafaelm@rafaelm", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cprlpM0Bc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Rafael", last_name: "M", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 110, email: "vincentf@vincentf", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cXdaMp0Bc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "F", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 111, email: "mathieuev@mathieuev", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cvGTMp0Bc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mathieu", last_name: "Ev", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 112, email: "robinl@robinl", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cvfdTp0Bc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Robin", last_name: "L", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 113, email: "vincentau@vincentau", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cpmGMp0Bc1w_-xpnDAg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "Au", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 114, email: "jeremyva@jeremyva", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cvfdTp0Bc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jeremy", last_name: "Va", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 115, email: "thibault.tere@gmail.com", futsal_position_id: 2, picture: 'eriksen.png', password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cvcGdp0Bc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibault", last_name: "Te", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.google_email = "thibault.tere@gmail.com"
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 116, email: "basilech@basilech", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5cmNdTp0Bc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Basile", last_name: "Ch", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 117, email: "matthieufla@matthieufla", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmDGdp0Bc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Matthieu", last_name: "Fla", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 118, email: "valentinj@valentinj", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmDGdp0Bc1w_-xpmDag", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Valentin", last_name: "Ju", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 119, email: "vincentsca@vincentsca", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmnDpp0Bc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "Sca", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 120, email: "N.scarano@esc-montpellier.com", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmDGdp0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Nicolas", last_name: "Sca", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 121, email: "charlesb@charlesb", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmnfRe0Bc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Charles", last_name: "Boi", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 122, email: "julienc@julienc", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "P8tFGdp0Bc1w_-xpmDag", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Julien", last_name: "Cro", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 123, email: "louisr@louisr", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmnnFQZBc1w_-xpnFrg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Louis", last_name: "R", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 124, email: "emilienj@emilienj", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pmnBfT0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Emilien", last_name: "J", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 125, email: "samuelb@samuelb", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pfcTfT0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Samuel", last_name: "B", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 126, email: "thomaspri@thomaspri", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5mdBBfT0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "Pri", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 127, email: "aureliende@aureliende", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pvNPfT0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Aurelien", last_name: "De", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 128, email: "zakz@zakz", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pNBDfT0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Zak", last_name: "Z", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 129, email: "paulp@paulp", futsal_position_id: 4, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yD1nbCCHcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "P", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 130, email: "mickael.poulachon@trsb.net", futsal_position_id: 3, picture: "delort.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pNBNfT0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mickael", last_name: "P", company_id: 1, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 131, email: "gillesm@gillesm", futsal_position_id: 3, picture: "robben.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUbZbCCHcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gilles", last_name: "M", company_id: 1, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 132, email: "seanbri@seanbri", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$15sGvDBOWVzC5/qiIIBW.uZ.Kv2nG/axjXPlZL2UQQ.hwwbQWOC5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "5pNBnBf0Bc1w_-xpmNDg", confirmed_at: nil, confirmation_sent_at: "2017-03-30 11:53:41", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Sean", last_name: "Bri", company_id: nil, created_at: "2017-03-30 11:53:41", updated_at: "2017-03-30 11:53:41"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 133, email: "guillaumegui@guillaumegui", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCCHcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Gui", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 134, email: "sherloquinl@sherloquinl", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Sherloquin", last_name: "L", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 135, email: "yahnhernandez@yahnhernandez", futsal_position_id: 3, picture: "anderson.png", password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFvGtvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Yahn", last_name: "Her", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 136, email: "laurentl@laurentl", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvnBdDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Laurent", last_name: "L", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 137, email: "paulfaucon@paulfaucon", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yMpFSCDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "Fau", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 138, email: "usberg@usberg", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRvanDKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Usberg", last_name: "U", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 139, email: "jimmyfriand@jimmyfriand", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5ynBdSCDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jimmy", last_name: "Fri", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 140, email: "loris@loris", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRvnGrbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Loris", last_name: "L", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 141, email: "guillaumem@guillaumem", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yvBdBdDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Me", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 142, email: "joachiml@joaquiml", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L6HdpFSCDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Joachim", last_name: "Le", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 143, email: "jordand@jordand", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRvdsDKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jordan", last_name: "De", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 144, email: "etienneeu@etienneeu", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yncJdCDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Etienne", last_name: "Eu", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 145, email: "michaelle@michaelLe", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRcHerbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Michael", last_name: "Le", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 146, email: "arnaudl@arnaudl", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRdbpDKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Arnaud", last_name: "Le", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 147, email: "francoisblo@grancoisblo", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L9pmlJdCDFcsRvrqJbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Francois", last_name: "Blo", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 148, email: "guillaumeblo@guillaumeblo", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcsRcGtdbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Blo", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 149, email: "antoineda@antoineda", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcvGeGtdbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Antoine", last_name: "Da", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 150, email: "gregoired@gregoired", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcvGeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gregoire", last_name: "D", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 151, email: "guillaumelej@guillaumelej", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfbHfDcvGeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Lej", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 152, email: "maxn@maxn", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfSCDFcdZcGtdbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Max", last_name: "No", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 153, email: "gauthierg@gauthierg", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdE2vfCSAFcvGeGtdbKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Gauthier", last_name: "Gre", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 154, email: "thibaultv@thibaultv", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfCmPFcvGeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibault ", last_name: "Vi", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 155, email: "killianr@killianr", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfbHfcDZGeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Killian", last_name: "Reb", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 156, email: "renemendy@renemendy", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfcDMcDZGeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Rene", last_name: "Men", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 157, email: "thomaschavry@thomaschavry", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUcfdDMcDZGeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "Cha", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 158, email: "victork@victork", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfcDMcMLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Victor", last_name: "K", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 159, email: "jeremic@jeremic", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfcDdNgLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jeremi", last_name: "C", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 160, email: "valentind@valentind", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJ4vfcDMcMLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Valentin", last_name: "D", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 161, email: "alexy.haluch@trsb.net", picture: "cabaye.png", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfEcDMcMLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alexy", last_name: "Ha", company_id: 1, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 162, email: "simon.champdavoine@trsb.net", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfEcDcDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Simon", last_name: "Cham", company_id: 1, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 163, email: "cedric.lemerle@enovea.net", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfEPSGDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Cédric", last_name: "Le", company_id: 4, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 164, email: "felixj@felixj", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJdSePSGDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Félix", last_name: "Jo", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 165, email: "charlesca@charlesca", futsal_position_id: 1, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfEnbSDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Charles", last_name: "Ca", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 166, email: "remi.cannessant@enovea.net", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfEcfDDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Remi", last_name: "Ca", company_id: 4, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 167, email: "nicolasdecarvalho@nicolasdecarvalho", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdPsGEnbSDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Nicolas", last_name: "De C", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 168, email: "guillaumebai@guillaumebai", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$GRdVVS.6Bs9cZQr6.bL0a.0r/EW7mZdwgnI4pRca1k7GL984kpBwm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "_U_155cfdu56-RDAtzod", confirmed_at: nil, confirmation_sent_at: "2017-04-01 20:52:32", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Guillaume", last_name: "Bai", company_id: nil, created_at: "2017-04-01 20:52:32", updated_at: "2017-04-01 20:52:32"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 169, email: "thibauts@thibauts", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$f8Sgs9Ae3XqSnPuEqv4gIOxsE7KwjWwrSAbUILW/ouKEeUnY.ww.K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "sW9jg4UAcFsmxUA7n4Mx", confirmed_at: nil, confirmation_sent_at: "2017-04-10 19:03:54", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thibaut", last_name: "So", company_id: nil, created_at: "2017-04-10 19:03:54", updated_at: "2017-04-10 19:03:54"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 170, email: "thomas.cumont@trsb.net", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfdBdcDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Thomas", last_name: "Cumont", company_id: 1, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 171, email: "Vincent.Utchinpryatna@Vincent.Utchinpryatna", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfdcDsDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Vincent", last_name: "Utch", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 172, email: "adrien.catel@adrien.catel", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LdJcfdcSQDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Adrien", last_name: "Cat", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 173, email: "jordan.carvalho@jordan.carvalho", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcSAdcDsDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Jordan", last_name: "Ca", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 174, email: "corentin.allemand@corentin.allemand", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcSAfdcDsDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Corentin", last_name: "Al", company_id: 1, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 175, email: "abel.lefebvre@abel.lefebvre", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcSaBdDsDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Abel", last_name: "Le", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 176, email: "pote.jordy@pote.jordy", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcSacDssDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Pote", last_name: "Jordy", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 177, email: "leportier.romaric@gmail.com", picture: "scholes.png", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcScSassDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Romaric", last_name: "L", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 178, email: "valentinneel@valentinneel", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcScSabbDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Valentin", last_name: "N", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 179, email: "antoinefitte@antoinefitte", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcScSabcDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Antoine", last_name: "F", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 180, email: "brahimb@brahimb", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcSaSabcDZLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Brahim", last_name: "B", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 181, email: "benjaminp@benjaminp", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcScSabcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Benjamin", last_name: "P", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 182, email: "johanh@johanh", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LcScSqbcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Johan", last_name: "H", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 183, email: "antonin.paul@trsb.net", picture: 'isco.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LxScSabcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Antonin", last_name: "P", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 184, email: "victorp@victorp", picture: 'eriksen.png', futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwScSqbcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Victor", last_name: "P", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 185, email: "paulh@paulh", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwSsSqbcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Paul", last_name: "H", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 186, email: "alexandrep@alexandrep", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwSqSqbcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alexandre", last_name: "P", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 187, email: "leopotemathieu@leopotemathieu", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwSaSqbcDZLPeGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Leo", last_name: "Pote Mathieu", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 188, email: "lucasp@lucasp", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwSqSqbcDZLPaGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Lucas", last_name: "P", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 189, email: "alexdev@alexdev", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwSqSqbcDZLPvGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Alex", last_name: "Dev", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 190, email: "mathieunyikeine@mathieunyikeine", picture: nil, futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "LwSqSqbcDZLavGbsEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Mathieu", last_name: "Nyi", company_id: nil, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"

    user = User.new({id: 191, email: "hugo.lecomte@huo.lecomte", futsal_position_id: 3, password:"password", password_confirmation: "password", encrypted_password: "$2a$11$lt.AfYGAwMPTdt0RR/QXA.LjKobiwo8Ob/F8AqJm9MbYg3L3wvhqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "L5yUvfcsMcMLPeGbdEKG", confirmed_at: nil, confirmation_sent_at: "2017-03-30 21:26:33", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, first_name: "Hugo", last_name: "Le", company_id: 1, created_at: "2017-03-30 21:26:33", updated_at: "2017-03-30 21:26:33"})
    user.skip_confirmation!
    user.save!
    user.add_role "player"
  end
end