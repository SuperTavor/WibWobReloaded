.class final Lcom/facebook/internal/AppEventsLoggerUtility$1;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    const-string v1, "MOBILE_APP_INSTALL"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/AppEventsLoggerUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    const-string v1, "CUSTOM_APP_EVENTS"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/AppEventsLoggerUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
