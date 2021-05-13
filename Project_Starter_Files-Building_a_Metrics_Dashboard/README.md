**Note:** For the screenshots, you can store all of your answer images in the `answer-img` directory.

## Verify the monitoring installation

*TODO:* run `kubectl` command to show the running pods and services for the three components. Copy and paste the output or take a screenshot of the output and include it here to verify the installation

```bash
$ echo "" && echo "/*** App Pods: ***/" && kubectl get pods && echo "" && echo "/*** App Services ***/" && kubectl get services

/*** App Pods: ***/
NAME                           READY   STATUS    RESTARTS   AGE
backend-app-5f749755f4-dxf7f   1/1     Running   0          37m
backend-app-5f749755f4-sll4v   1/1     Running   0          37m
backend-app-5f749755f4-w2xs5   1/1     Running   0          37m
frontend-app-75cd57cfd-49jx2   1/1     Running   0          37m
frontend-app-75cd57cfd-bbnpq   1/1     Running   0          37m
frontend-app-75cd57cfd-fxd42   1/1     Running   0          37m
trial-app-6cd98d67f4-75bc7     1/1     Running   0          37m
trial-app-6cd98d67f4-c77mv     1/1     Running   0          37m
trial-app-6cd98d67f4-wt7kb     1/1     Running   0          37m

/*** App Services ***/
NAME               TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
backend-service    LoadBalancer   100.70.76.213    <pending>     80:30039/TCP     37m
frontend-service   LoadBalancer   100.65.199.104   <pending>     8080:31707/TCP   37m
kubernetes         ClusterIP      100.64.0.1       <none>        443/TCP          47m
trial-service      LoadBalancer   100.68.191.3     <pending>     8080:31204/TCP   37m
```

## Setup the Jaeger and Prometheus source
*TODO:* Expose Grafana to the internet and then setup Prometheus as a data source. Provide a screenshot of the home page after logging into Grafana.

## Create a Basic Dashboard
*TODO:* Create a dashboard in Grafana that shows Prometheus as a source. Take a screenshot and include it here.

## Describe SLO/SLI
*TODO:* Describe, in your own words, what the SLIs are, based on an SLO of *monthly uptime* and *request response time*.

## Creating SLI metrics.
*TODO:* It is important to know why we want to measure certain metrics for our customer. Describe in detail 5 metrics to measure these SLIs. 

## Create a Dashboard to measure our SLIs
*TODO:* Create a dashboard to measure the uptime of the frontend and backend services We will also want to measure to measure 40x and 50x errors. Create a dashboard that show these values over a 24 hour period and take a screenshot.

## Tracing our Flask App
*TODO:*  We will create a Jaeger span to measure the processes on the backend. Once you fill in the span, provide a screenshot of it here.

## Jaeger in Dashboards
*TODO:* Now that the trace is running, let's add the metric to our current Grafana dashboard. Once this is completed, provide a screenshot of it here.

## Report Error
*TODO:* Using the template below, write a trouble ticket for the developers, to explain the errors that you are seeing (400, 500, latency) and to let them know the file that is causing the issue.

TROUBLE TICKET

Name:

Date:

Subject:

Affected Area:

Severity:

Description:


## Creating SLIs and SLOs
*TODO:* We want to create an SLO guaranteeing that our application has a 99.95% uptime per month. Name three SLIs that you would use to measure the success of this SLO.

## Building KPIs for our plan
*TODO*: Now that we have our SLIs and SLOs, create KPIs to accurately measure these metrics. We will make a dashboard for this, but first write them down here.

## Final Dashboard
*TODO*: Create a Dashboard containing graphs that capture all the metrics of your KPIs and adequately representing your SLIs and SLOs. Include a screenshot of the dashboard here, and write a text description of what graphs are represented in the dashboard.  
