﻿using BaseApplication;
using BusinessLogic;
using BusinessLogicInterface;
using DataAcceessInterface;
using DataAccess;
using Microsoft.Owin.Security.OAuth;
using System.Web.Http;
using Unity;

namespace ShopEshopperAPI
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services
            // Configure Web API to use only bearer token authentication.
            config.SuppressDefaultHostAuthentication();
            config.Filters.Add(new HostAuthenticationFilter(OAuthDefaults.AuthenticationType));

            // Web API DI
            var container = new UnityContainer();
            // CATEGORY
            container.RegisterType<ICategoryBusinessLogic, CategoryBusinessLogic>();
            container.RegisterType<ICategoryDataAccess, CategoryDataAccess>();

            config.DependencyResolver = new UnityResolver(container);

            // Web API routes
            config.MapHttpAttributeRoutes();
            config.Routes.MapHttpRoute(
                name: "ActionApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}