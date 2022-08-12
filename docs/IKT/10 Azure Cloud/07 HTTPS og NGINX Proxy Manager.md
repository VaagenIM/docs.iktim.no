---
title: 07. HTTPS og NGINX Proxy Manager
aliases: [07. HTTPS og NGINX Proxy Manager,]
lang: nb-NO
author:
  - Sondre Grønås
tags:
  - Azure
  - Docker
date: 2022-05-03
---
# 07. HTTPS og NGINX Proxy Manager
Her kommer instruks på hvordan man bruker [Nginx Proxy Manager](https://nginxproxymanager.com/) - denne brukes til å dirigere trafikk til nettsider og behandler [[SSL]] sertifikater for oss.

I eksempel fra [[06 Docker og Wordpress|Docker og Wordpress]] vil vi kunne forvandle http://din_azure_ip_adresse:8080 til https://din_azure_ip_adresse, eventuelt https://example.com dersom vi peker et domene mot din Azure klients IP-adresse. Denne kan gjøres for eksempel via [[Cloudflare DDNS]]