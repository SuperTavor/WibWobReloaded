.class Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface$1;->this$1:Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface$1;->this$1:Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/ToastWebView;->onIdpLogout()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface$1;->this$1:Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastWebView;->access$000(Lcom/hangame/hsp/ui/view/ToastWebView;)V

    return-void
.end method
