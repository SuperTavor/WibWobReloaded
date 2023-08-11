.class Lcom/hangame/hsp/ui/view/HSPWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/HSPWebView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/HSPWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/HSPWebView$1;->this$0:Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceive(Lcom/hangame/hsp/HSPMessage;)V
    .locals 2

    const-string v0, "javascript:HspMessage.updateMessages();"

    const-string v0, "HSPWebView"

    const-string v1, "Received Message and load: javascript:HspMessage.updateMessages();"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView$1;->this$0:Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/HSPWebView;->access$000(Lcom/hangame/hsp/ui/view/HSPWebView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:HspMessage.updateMessages();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
