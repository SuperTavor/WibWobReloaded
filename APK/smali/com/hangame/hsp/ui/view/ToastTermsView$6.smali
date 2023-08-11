.class Lcom/hangame/hsp/ui/view/ToastTermsView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$6;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : onGlobalLayout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$1200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$1200()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$6;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$1300(Lcom/hangame/hsp/ui/view/ToastTermsView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
