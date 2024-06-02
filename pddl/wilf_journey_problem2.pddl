(define (problem wilf_journey3)
   (:domain wilf_journey1)

   (:objects
      Wilf - wilf
      Narwhal Walrus
      Musk_ox Arctic_fox Wolf_family
	  Moose Goose Bear_moth Polar_Bear - friend
	  Iceberg Shore
      Ridge Bridge Stream
      Trees Valley Wilds Den - location
   )

   (:init
	  (at Iceberg Wilf)
      (isConnected Iceberg Shore)
      (isConnected Shore Ridge)
      (isConnected Ridge Bridge)
      (isConnected Bridge Trees)
      (isConnected Trees Valley)
      (isConnected Valley Wilds)
      (isConnected Wilds Stream)
      (isConnected Stream Den)
      (hasFriend Iceberg Narwhal)
      (hasFriend Iceberg Polar_Bear)
      (hasFriend Shore Walrus)
      (hasFriend Ridge Musk_ox)
      (hasFriend Bridge Arctic_fox)
      (hasFriend Trees Goose)
      (hasFriend Valley Moose)
      (hasFriend Wilds Bear_moth)
      (hasFriend Stream Wolf_family)
      (canCarry Iceberg Shore Narwhal)
      (canCarry Iceberg Shore Polar_Bear)
      (canCarry Shore Ridge Walrus)
      (canCarry Ridge Bridge Musk_ox)
      (canGuide Bridge Trees Arctic_fox)
      (canGuide Trees Valley Goose)
      (canCarry Valley Wilds Moose)
      (canGuide Wilds Stream Bear_moth)
      (canCarry Stream Den Wolf_family)

   )


  (:goal (at Den Wilf)

   )

)