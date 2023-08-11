.class final Lcom/hangame/hsp/util/PopupUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic val$parentView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/PopupUtil$2;->val$parentView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/util/PopupUtil$2;->val$parentView:Landroid/widget/RelativeLayout;

    const-string v1, "popup_background"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
