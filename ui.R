library(leaflet)
library(googlesheets)

# Choices for drop-downs

shinyUI(
    bootstrapPage(tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
    leafletOutput("map", width = "100%", height = "100%"),
    absolutePanel(top = 10, right = 10,
                  selectInput("city", "City", c('Boston'='Boston',
                                                 'Chicago'='Chicago',
                                                 'Washington'='DC',
                                                 'Los Angeles'='LA',
                                                 'New York'='NYC',
                                                 'San Francisco'='SF')),
                  selectInput("color", "Color", c('property_type'='property_type',
                                                  'room_type'='room_type',
                                                  'bed_type'='bed_type',
                                                  'cancellation_policy'='cancellation_policy',
                                                  'cleaning_fee'='cleaning_fee',
                                                  'neighbourhood'='neighbourhood')),
                  selectInput("size", "Size", c('log_price'='log_price',
                                                'number_of_reviews'='number_of_reviews',
                                                'review_scores_rating'='review_scores_rating'))
        )
)
)