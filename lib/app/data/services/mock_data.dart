


//THIS DATA IS FOR MOCKING/TESTING


import 'package:gasty/app/data/models/Expenses.dart';
import 'package:gasty/app/data/models/Politician.dart';
import 'package:mock_data/mock_data.dart';

final politicians = <Politician> [
  new Politician(id: 1,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 500000,party: 'PLD',show: true,spot: 'Ministro' ),
  new Politician(id: 2,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 500670,party: 'PLD',show: true,spot: 'Ministro' ),
  new Politician(id: 3,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 600000,party: 'PLD',show: true,spot: 'Ministro' ),
  new Politician(id: 4,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 700000,party: 'PLD',show: true,spot: 'Ministro' ),
  new Politician(id: 5,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 800000,party: 'PLD',show: true,spot: 'Ministro' ),
  new Politician(id: 6,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 900000,party: 'PRM',show: true,spot: 'Ministro' ),
  new Politician(id: 7,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 100000,party: 'PRSC',show: true,spot: 'Ministro' ),
  new Politician(id: 8,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 200000,party: 'PRM',show: true,spot: 'Ministro' ),
  new Politician(id: 9,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 300000,party: 'PRSC',show: true,spot: 'Ministro' ),
  new Politician(id: 10,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 400000,party: 'PRD',show: true,spot: 'Ministro' ),
  new Politician(id: 11,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 900000,party: 'PRM',show: true,spot: 'Ministro' ),
  new Politician(id: 12,name: mockName(), image: 'http://lorempixel.com/400/200/people',netWorth: 890000,party: 'PRM',show: true,spot: 'Ministro' ),
  new Politician(id: 13,name: mockName(), image: 'https://picsum.photos/200',netWorth: 990000,party: 'PRD',show: true,spot: 'Ministro' ),
];


final expenses = <Expenses> [
  new Expenses(id:1,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:2,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:3,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:4,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:5,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:6,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:7,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:8,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:9,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:10,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:11,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
  new Expenses(id:12,title: mockName(), image: 'https://picsum.photos/200', price: mockInteger(1,15), quantity: 0),
];