.class Lcom/hangame/hsp/ui/view/ToastTermsView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$2;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$000()Landroid/view/View;

    move-result-object v0

    const-string v1, "privacy_agree_check"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$800()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$802(Z)Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const-string v0, "hsp_toast_terms_red"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$900()Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->RETURN_PARAM:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView$2;->this$0:Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$1000(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lcom/hangame/hsp/ui/view/ToastTermsView;->access$802(Z)Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "hsp_toast_agree_normal"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
