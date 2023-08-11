.class Lbolts/WebViewAppLinkResolver$2$2;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lbolts/t;

.field final synthetic b:Lbolts/v;


# direct methods
.method constructor <init>(Lbolts/v;Lbolts/t;)V
    .locals 0

    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$2$2;->b:Lbolts/v;

    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$2$2;->a:Lbolts/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbolts/WebViewAppLinkResolver$2$2;->a:Lbolts/t;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/t;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2$2;->a:Lbolts/t;

    invoke-virtual {v1, v0}, Lbolts/t;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
