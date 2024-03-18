// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/image_constant.dart';

class DummyDB {
  static List accountScreenListTile = [
    {
      "title": "You have multiple promos",
      "subtitle": "We'll automatically apply the one that saves you time"
    },
    {
      "title": "Privacy checkup",
      "subtitle": "Take an interactive tour of your privacy settings"
    },
  ];

  static List accountScreenList2 = [
    {
      "icon": Icon(Icons.settings),
      "text": "Settings",
      "subtext": null,
      "notification": false
    },
    {
      "icon": Icon(Icons.email),
      "text": "Messages",
      "subtext": null,
      "notification": true
    },
    {
      "icon": Icon(Icons.card_giftcard),
      "text": "Send a gift",
      "subtext": null,
      "notification": false
    },
    {
      "icon": Icon(Icons.person),
      "text": "Earn by driving or delivering",
      "subtext": null,
      "notification": false
    },
    {
      "icon": Icon(Icons.business_center),
      "text": "Setup your business profile",
      "subtext": "Automate work travel & meal expenses",
      "notification": false
    },
    {
      "icon": Icon(Icons.person),
      "text": "Manage Uber account",
      "subtext": null
    },
    {
      "icon": Icon(Icons.info),
      "text": "Legal",
      "subtext": null,
      "notification": false
    },
  ];

  static List<ActivityModel> activities = [
    ActivityModel(
        location: "Park",
        date: "Mar 10",
        time: "10:00 AM",
        price: 250.0,
        image: ImageConstants.uberIntercityPng),
    ActivityModel(
        location: "Museum",
        date: "Jan 6",
        time: "2:00 PM",
        price: 15.0,
        image: ImageConstants.uberRidePng),
    ActivityModel(
        location: "Concert Hall",
        date: "Apr 21",
        time: "7:00 PM",
        price: 30.0,
        image: ImageConstants.uberRentalsPng),
    ActivityModel(
        location: "Beach",
        date: "Sep 15",
        time: "All day",
        price: 100.0,
        image: ImageConstants.uberRidePng),
    ActivityModel(
        location: "Zoo",
        date: "Nov 19",
        time: "11:00 AM",
        price: 20.0,
        image: ImageConstants.uberReservePng),
    ActivityModel(
        location: "Restaurant",
        date: "Dec 12",
        time: "6:30 PM",
        price: 50.0,
        image: ImageConstants.uberRidePng),
    ActivityModel(
        location: "Amusement Park",
        date: "Apr 11",
        time: "10:00 AM",
        price: 40.0,
        image: ImageConstants.uberIntercityPng),
    ActivityModel(
        location: "Hiking Trail",
        date: "Aug 15",
        time: "8:00 AM",
        price: 500.0,
        image: ImageConstants.uberRidePng),
    ActivityModel(
        location: "Movie Theater",
        date: "Jan 1",
        time: "4:00 PM",
        price: 12.0,
        image: ImageConstants.uberReservePng),
    ActivityModel(
        location: "Shopping Mall",
        date: "Dec 25",
        time: "12:00 PM",
        price: 0.0,
        image: ImageConstants.uberRidePng),
  ];

  static List suggestionBannerList = [
    {
      "image": ImageConstants.uberYouHaveMulProPng,
      "title": "You have multiple promos",
      "subtitle": "Terms apply"
    },
    {
      "image": ImageConstants.uberOutCabonDemPng,
      "title": "Outstation cabs on demand",
      "subtitle": "Try Intercity"
    },
    {
      "image": ImageConstants.uberReserveaRidePng,
      "title": "Reserve a ride in advance",
      "subtitle": "Request Reserve"
    },
    {
      "image": ImageConstants.uberGetThereTogetherPng,
      "title": "Get there together",
      "subtitle": "Try group rides"
    },
    {
      "image": ImageConstants.uberReadyLetsRollPng,
      "title": "Ready? Then let's roll.",
      "subtitle": "Ride with Uber"
    }
  ];

  static List homeScreenList1 = [
    {
      "image": ImageConstants.uberGoWithUberAutoPng,
      "title": "Go with Uber Auto",
      "subtitle": "Doorstep pickup, no bargaining"
    },
    {
      "image": ImageConstants.uberTryGroupRidesPng,
      "title": "Try Group Rides",
      "subtitle": "Ride with coworkers and save"
    }
  ];

  static List homeScreenList2 = [
    {
      "image": ImageConstants.uberTryaGroupRidePng,
      "title": "Try a group ride",
      "subtitle": "Seamless rides, together"
    },
    {
      "image": ImageConstants.uberAutoRidesPng,
      "title": "Auto rides",
      "subtitle": "Upfront fares, doorstep pickups"
    }
  ];

  static List homeScreenList3 = [
    {
      "image": ImageConstants.uberRentalsCartoonPng,
      "title": "Try Uber Rentals",
      "subtitle": "On-trip help with safety issues"
    },
    {
      "image": ImageConstants.uberTravelIntercityPng,
      "title": "Try intercity rides",
      "subtitle": "Top-rated drivers, newer cars"
    }
  ];

  static List planRideList = [
    {
      "location": "The Vineyard",
      "address": "29W5+X5J Kangarappady, Kochi, Kerala"
    },
    {"location": "Fort Kochi Beach", "address": "Cochin, Kerala"},
    {
      "location": "Mattancherry Palace",
      "address": "Mattancherry, Kochi, Kerala"
    },
    {"location": "Hill Palace Museum", "address": "Tripunithura, Kerala"},
    {"location": "Cherai Beach", "address": "Vypin Island, Kochi, Kerala"}
  ];

  static List chooseRideList = [
    {
      "image": ImageConstants.autoIconPng,
      "ride": "Uber Auto",
      "cost": "128.78"
    },
    {"image": ImageConstants.uberRidePng, "ride": "Uber Go", "cost": "159.70"},
    {
      "image": ImageConstants.uberIntercityPng,
      "ride": "Uber Go Sedan",
      "cost": "181.89"
    },
    {
      "image": ImageConstants.uberRidePng,
      "ride": "Uber Premier",
      "cost": "128.20"
    },
    {
      "image": ImageConstants.uberRentalsPng,
      "ride": "Go Rentals",
      "cost": "281.77"
    },
    {
      "image": ImageConstants.uberIntercityPng,
      "ride": "Uber XL",
      "cost": "282.25"
    },
  ];
}

class ActivityModel {
  String location;
  String date;
  String time;
  double price;
  String image;

  ActivityModel(
      {required this.location,
      required this.date,
      required this.time,
      required this.price,
      required this.image});
}
