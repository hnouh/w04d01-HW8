
subwayLines = [
    Red= [
      "South Station",
      "Kendall",
      "Central",
      "Harvard",
      "Park Street",
      "Porter",
      "Davis",
      "Alewife"
    ],
    Green= [
      "Government Center",
      "Boylston",
      "Arlington",
      "Park Street",
      "Copley",
      "Hynes",
      "Kenmore"
    ],
    Orange= [
      "North Station",
      "Haymarket",
      "State",
      "Downtown Crossing",
      "Chinatown",
      "Park Street",
      "Back Bay",
      "Forest Hills"
    ]
  ]
  
  def stops_between_stations(startLine, startStation, endLine, endStation)

     $startStationIndex = (startLine).index(startStation)

     $endStationIndex = (endLine).index(endStation)

     if (startLine === endLine) 
      return ($startStationIndex - $endStationIndex).abs
    end

    $startLineParkStreetIndex = (startLine).index("Park Street")

    $tripToParkStreet = ($startStationIndex - $startLineParkStreetIndex).abs

    $endLineParkStreetIndex = (endLine).index("Park Street")

    $tripToDestination = ($endStationIndex - $endLineParkStreetIndex).abs

    $totalTrip = $tripToParkStreet + $tripToDestination

    return $totalTrip

  end

stops_between_stations(Red, 'Alewife', Red, 'Park Street').to_s+" stops" # 3 stops
stops_between_stations(Red, 'Alewife', Orange, 'Downtown Crossing').to_s+" stops" # 5 stops
stops_between_stations(Red, 'South Station', Green, 'Kenmore').to_s+" stops" # 7 stops
  