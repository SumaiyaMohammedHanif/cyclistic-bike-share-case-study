getwd()
install.packages("tidyverse")
library("tidyverse")
q1_2019 <- read_csv("Divvy_Trips_2019_Q1.csv")
q1_2019 <- read_csv("Divvy_Trips_2019_Q1-Divvy_Trips_2019_Q1.csv")
q1_2019 <- read_csv("Divvy_Trips_2019_Q1 - Divvy_Trips_2019_Q1.csv")
q1_2020 <- read_csv("Divvy_Trips_2020_Q1 - Divvy_Trips_2020_Q1.csv")
head(q1_2019)
head(q1_2020)
library(lubridate)
colname(q1_2019)
colnames(q1_2019)
colnames(q1_2020)
library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")
q1_2019 <- q1_2019 %>%
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    start_station_name = from_station_name,
    start_station_id = from_station_id,
    end_station_name = to_station_name,
    end_station_id = to_station_id,
    member_casual = usertype
  ) %>%
  mutate(
    rideable_type = "classic_bike",    # 2019 data doesn't have type info, assume classic
    started_at = mdy_hms(started_at),
    ended_at = mdy_hms(ended_at)
  )
(q1_2019 <- rename(q1_2019
                   ,ride_id = trip_id
                   ,rideable_type = bikeid
                   ,started_at = start_time
                   ,ended_at = end_time
                   ,start_station_name = from_station_name
                   ,start_station_id = from_station_id
                   ,end_station_name = to_station_name
                   ,end_station_id = to_station_id
                   ,member_casual = usertype
))
library(lubridate)
q1_2019 <- q1_2019 %>%
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    start_station_name = from_station_name,
    start_station_id = from_station_id,
    end_station_name = to_station_name,
    end_station_id = to_station_id,
    member_casual = usertype
  ) %>%
  mutate(
    rideable_type = "classic_bike",
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at)
  )
library(tidyverse)
library(lubridate)
q1_2019 <- q1_2019 %>%
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    start_station_id = from_station_id,
    start_station_name = from_station_name,
    end_station_id = to_station_id,
    end_station_name = to_station_name,
    member_casual = usertype
  ) %>%
  mutate(
    rideable_type = "classic_bike",  # This info is missing in 2019, assume classic
    start_lat = NA,                  # Add missing lat/lng columns as NA
    start_lng = NA,
    end_lat = NA,
    end_lng = NA,
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at)
  ) %>%
  select(
    ride_id, rideable_type, started_at, ended_at,
    start_station_name, start_station_id,
    end_station_name, end_station_id,
    start_lat, start_lng, end_lat, end_lng,
    member_casual
  )
rlang::last_trace()
library(tidyverse)
library(lubridate)
# Read again after restarting session
q1_2019 <- read_csv("Divvy_Trips_2019_Q1 - Divvy_Trips_2019_Q.csv")
library(tidyverse)
library(lubridate)
# Read again after restarting session
q1_2019 <- read_csv("Divvy_Trips_2019_Q1 - Divvy_Trips_2019_Q1.csv")
colnames(q1_2019)
q1_2019 <- q1_2019 %>%
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    start_station_id = from_station_id,
    start_station_name = from_station_name,
    end_station_id = to_station_id,
    end_station_name = to_station_name,
    member_casual = usertype
  ) %>%
  mutate(
    rideable_type = "classic_bike",
    start_lat = NA,
    start_lng = NA,
    end_lat = NA,
    end_lng = NA,
    started_at = mdy_hms(started_at),
    ended_at = mdy_hms(ended_at)
  ) %>%
  select(
    ride_id, rideable_type, started_at, ended_at,
    start_station_name, start_station_id,
    end_station_name, end_station_id,
    start_lat, start_lng, end_lat, end_lng,
    member_casual
  )
q1_2019 <- q1_2019 %>%
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    start_station_id = from_station_id,
    start_station_name = from_station_name,
    end_station_id = to_station_id,
    end_station_name = to_station_name,
    member_casual = usertype
  ) %>%
  mutate(
    rideable_type = "classic_bike",
    start_lat = NA,
    start_lng = NA,
    end_lat = NA,
    end_lng = NA,
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at)
  ) %>%
  select(
    ride_id, rideable_type, started_at, ended_at,
    start_station_name, start_station_id,
    end_station_name, end_station_id,
    start_lat, start_lng, end_lat, end_lng,
    member_casual
  )
q1_2019 <- read_csv("Divvy_Trips_2019_Q1 - Divvy_Trips_2019_Q1.csv")
colnames(q1_2019)
q1_2019 <- q1_2019 %>%
  rename(
    ride_id = trip_id,
    started_at = start_time,
    ended_at = end_time,
    start_station_id = from_station_id,
    start_station_name = from_station_name,
    end_station_id = to_station_id,
    end_station_name = to_station_name,
    member_casual = usertype
  ) %>%
  mutate(
    rideable_type = "classic_bike",
    start_lat = NA,
    start_lng = NA,
    end_lat = NA,
    end_lng = NA,
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at)
  ) %>%
  select(
    ride_id, rideable_type, started_at, ended_at,
    start_station_name, start_station_id,
    end_station_name, end_station_id,
    start_lat, start_lng, end_lat, end_lng,
    member_casual
  )
glimpse(q1_2019)
glimpse(q1_2020)
all_trips <- bind_rows(q1_2019, q1_2020)
q1_2019 <- mutate(q1_2019, ride_id = as.character(ride_id)
                  ,rideable_type = as.character(rideable_type))
all_trips <- bind_rows(q1_2019, q1_2020)
q1_2020 <- q1_2020 %>%
  mutate(
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at)
  )
glimpse(q1_2019)
glimpse(q1_2020)
all_trips <- bind_rows(q1_2019, q1_2020)
glimpse(all_trips)
all_trips <- all_trips %>% drop_na()
all_trips <- all_trips %>%
  select(-c(start_lat, start_lng, end_lat, end_lng, birthyear, gender, "tripduration"))
all_trips <- all_trips %>%
  mutate(ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")))
all_trips <- all_trips %>%
  filter(ride_length >= 1, ride_length < 1440)
all_trips <- all_trips %>%
  mutate(day_of_week = wday(started_at, label = TRUE, abbr = FALSE))
glimpse(all_trips)
summary(all_trips$ride_length)
summary_stats <- all_trips %>%
  group_by(member_casual) %>%
  summarise(
    mean_ride_length = mean(ride_length),
    median_ride_length = median(ride_length),
    max_ride_length = max(ride_length),
    min_ride_length = min(ride_length)
  )
print(summary_stats)
rides_by_day <- all_trips %>%
  group_by(member_casual, day_of_week) %>%
  summarise(num_rides = n(), avg_duration = mean(ride_length)) %>%
  arrange(member_casual, day_of_week)
print(rides_by_day)
all_trips %>%
  group_by(member_casual) %>%
  summarise(avg_ride_length = mean(ride_length)) %>%
  ggplot(aes(x=member_casual, y=avg_ride_length, fill=member_casual)) +
  geom_col() +
  labs(title="Average Ride Length by User Type", x="User Type", y="Minutes")
rides_by_day %>%
  ggplot(aes(x=day_of_week, y=num_rides, fill=member_casual)) +
  geom_col(position="dodge") +
  labs(title="Number of Rides by Day of Week", x="Day of Week", y="Number of Rides")
rides_by_day %>%
  ggplot(aes(x=day_of_week, y=avg_duration, fill=member_casual)) +
  geom_col(position="dodge") +
  labs(title="Average Ride Duration by Day of Week", x="Day of Week", y="Minutes")
write_csv(all_trips, "cleaned_all_trips.csv")
write_csv(summary_stats, "summary_stats.csv")
write_csv(rides_by_day, "rides_by_day.csv")
write_csv(rides_by_day, "rides_by_day.csv")
write_csv(rides_by_day, "rides_by_day.csv")
load("~/Data Analyst Project/Case study 1/.RData")
