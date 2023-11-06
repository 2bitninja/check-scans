# Introduction

Tenable has security softwear used by many companies to secure thier IT infrastruture. The program Tenable.sc (Security Center) is a program or server application that collects scan results from other Tenable products. 

A successful scan is one where certain plugins don't trigger. 
The security team using tensble.sc or Nessus want to see the output of plugin 19506 show credentialed=true. The proplem is that you have do drill down through many screens in order to get that information. The propose of the check-scans script is to assist in verifing that all the assests had credentialed scsns.
This script focuses on checking Nessus scans to verify that they ran with credentials  
