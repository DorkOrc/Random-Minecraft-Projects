# arguments: arrow_type

$data modify storage custom_arrows:temp arrow_type merge from storage custom_arrows:global arrow_types[{id:"$(arrow_type)"}]

$function custom_arrows:arrow_events/$(arrow_type) with storage custom_arrows:temp item.tag
