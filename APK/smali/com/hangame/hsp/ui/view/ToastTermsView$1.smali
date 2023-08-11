.class Lcom/hangame/hsp/ui/view/ToastTermsView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$100(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$200(Lcom/hangame/hsp/ui/view/ToastTermsView;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$300()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$400(Lcom/hangame/hsp/ui/view/ToastTermsView;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$400(Lcom/hangame/hsp/ui/view/ToastTermsView;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v0

    const-string v1, "dialoglayout"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v2, v1, v3, v0, v4}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$500(Lcom/hangame/hsp/ui/view/ToastTermsView;IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$600(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$1;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$700(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    goto :goto_0
.end method
