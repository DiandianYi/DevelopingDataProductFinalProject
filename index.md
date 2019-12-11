---
title       : The Economics and CO2 Emission
subtitle    : The final project for developing data products
author      : Diandian Yi
job         : Data Science enthusiast
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github:
  user: DiandianYi
  repo: DevelopingDataProductFinalProject
---

## The data source of the application

To explore the relationship between the economic development and the CO2 emission, I employ the datasets containing the time series of the GDP, GDP per capita, GDP annual growth rate(%) and CO2 emission per 2010 US$ of GDP of 42 countries. The time series start from 1960 and were loaded from DBnomics which is an open-source project with the goal of aggregating the world's economic data in one location, free of charge to the public.DBnomics covers hundreds of millions of series from international and national institutions (Eurostat, World Bank, IMF, ...).   

> 1. All of the value of the GDP, GDP per capita was measured in 2010 US$;
> 2. The value of CO2 emission per 2010 US$ of GDP was measured in kg.

--- .class #id 

## Introduction to the application

This application consists of the interactive panel which cantains the choice of country and the choice of economic development indicator(GDP, GDP per capita, GDP annual growth rate(%)), and the main panel which display the interactive time series plot. The plot shows dual y axis by which we can observe the economic developing trend and the CO2 emission efficiency trend throughout the time at once. To use the application:

> 1. Choose the country/region in your interest by selecting in the dropdown menu(42 countries and regions in total);
> 2. Choose the economic development indicator in your interest by selecting in the dropdown menu(GDP, GDP per capita, GDP annual growth rate(%));
> 3. Hit the Submit botton;
> 4. You can also get detailed information for each year(each data point) by hover your mouse over the plot.

--- .class #id 

## A example

By choosing the country as "Argentina" and the indicator as "gdpval", and submitting, we got below plot:

<img src="Screenshot.PNG" style="max-width:1000px;float:center;">

--- .class #id 

## Thanks for your attention and enjoy the application!





