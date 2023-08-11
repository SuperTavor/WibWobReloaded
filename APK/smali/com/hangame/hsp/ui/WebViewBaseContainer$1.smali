.class Lcom/hangame/hsp/ui/WebViewBaseContainer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/WebViewBaseContainer;

.field final synthetic val$view:Landroid/webkit/WebView;

.field final synthetic val$webUri:Lcom/hangame/hsp/util/UriData;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;Landroid/webkit/WebView;Lcom/hangame/hsp/util/UriData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;->this$0:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    iput-object p2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;->val$webUri:Lcom/hangame/hsp/util/UriData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;-><init>(Lcom/hangame/hsp/ui/WebViewBaseContainer$1;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
