module ApplicationHelper
  def format_rspec(decision)
    components = decision.key.split(".")

    action, card = if components.length == 2
                     components
                   else
                     ["decide", components.first]
                   end

    "    game.#{action}(:#{card})\n"
  end

  def image(card)
    {
      :scout => "http://www.starrealms.com/wp-content/uploads/2015/05/scout_fixed-213x300.jpg",
      :viper => "http://www.starrealms.com/wp-content/uploads/2015/05/viper-213x300.jpg",
      :explorer => "http://www.starrealms.com/wp-content/uploads/2015/05/explorer-213x300.jpg",
      :blob_fighter => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0091_001_BlobFighter-213x300.jpg",
      :battle_pod => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0090_008_BattlePod-213x300.jpg",
      :trade_pod => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0089_012_TradePod-213x300.jpg",
      :blob_wheel => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0020_022_BlobWheel-e1431027979765-300x213.jpg",
      :ram => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0088_018_Ram-213x300.jpg",
      :blob_destroyer => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0086_028_BlobDestroyer-213x300.jpg",
      :the_hive => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0019_032_TheHive-e1431027882929-300x213.jpg",
      :battle_blob => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0084_034_BattleBlob-213x300.jpg",
      :blob_carrier => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0083_036_BlobCarrier-213x300.jpg",
      :mothership => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0082_038_Mothership-213x300.jpg",
      :blob_world => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0018_040_BlobWorld-e1431027734318-300x213.jpg",
      :federation_shuttle => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0057_122_FederationShuttle-213x300.jpg",
      :cutter => "http://www.starrealms.com/wp-content/uploads/2015/05/cutter-213x300.jpg",
      :embassy_yacht => "http://www.starrealms.com/wp-content/uploads/2015/05/embassyyacht-213x300.jpg",
      :trading_post => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0005_136_TradingPost-e1431050971142-300x213.jpg",
      :barter_world => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0004_146_BarterWorld-e1431050990891-300x213.jpg",
      :freighter => "http://www.starrealms.com/wp-content/uploads/2015/05/freighter-213x300.jpg",
      :defense_center => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0003_152_DefenseCenter-e1431051018658-300x213.jpg",
      :trade_escort => "http://www.starrealms.com/wp-content/uploads/2015/05/tradeescort-213x300.jpg",
      :flagship => "http://www.starrealms.com/wp-content/uploads/2015/05/flagship-213x300.jpg",
      :port_of_call => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0002_154_PortOfCall-e1431050940183-300x213.jpg",
      :central_office => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0001_158_CentralOfficel-e1431050912906-300x213.jpg",
      :command_ship => "http://www.starrealms.com/wp-content/uploads/2015/05/commandship-213x300.jpg",
      :trade_bot => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0080_042_TradeBot-213x300.jpg",
      :missile_bot => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0079_048_MissileBot-213x300.jpg",
      :battle_station => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0016_062_BattleStation-e1431055485961-300x213.jpg",
      :supply_bot => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0078_054_SupplyBot-213x300.jpg",
      :patrol_mech => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0075_068_PatrolMech-213x300.jpg",
      :stealth_needle => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0077_060_StealthNeedle-213x300.jpg",
      :battle_mech => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0000_072_BattleMech-213x300.jpg",
      :mech_world => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0014_074_MechWorld-e1431055598342-300x213.jpg",
      :junkyard => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0015_070_Junkyard-e1431055621150-300x213.jpg",
      :missile_mech => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0071_078_MissileMech-213x300.jpg",
      :machine_base => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0013_076_MachineBase-e1431055670816-300x213.jpg",
      :brain_world => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0012_080_BrainWorld-e1431055700197-300x213.jpg",
      :imperial_fighter => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0068_086_ImperialFighter-213x300.jpg",
      :corvette => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0069_082_Corvette-213x300.jpg",
      :imperial_frigate => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0067_092_ImperialFrigate-213x300.jpg",
      :survey_ship => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0066_098_SurveyShip-213x300.jpg",
      :recycling_station => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0009_110_RecyclingStation-e1431057689486-300x213.jpg",
      :space_station => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0011_104_SpaceStation-e1431057706220-300x213.jpg",
      :war_world => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0010_108_WarWorld-e1431057723777-300x213.jpg",
      :battlecruiser => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0060_116_Battlecruiser-213x300.jpg",
      :royal_redoubt => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0008_114_RoyalRedoubt-e1431057746203-300x213.jpg",
      :dreadnaught => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0059_118_Dreadnaught-213x300.jpg",
      :fleet_hq => "http://www.starrealms.com/wp-content/uploads/2015/05/CardsWBorders_0006_120_FleetHQ-e1431057770388-300x213.jpg",
    }.fetch((card.try(:name) || card).to_sym)
  end
end
