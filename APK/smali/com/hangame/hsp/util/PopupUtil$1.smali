.class final Lcom/hangame/hsp/util/PopupUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$parentView:Landroid/widget/RelativeLayout;

.field final synthetic val$popUp:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$popUp:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$parentView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/hangame/hsp/util/PopupUtil;->closeCurrentView()V

    iget-object v0, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$popUp:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$parentView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$popUp:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/hangame/hsp/util/PopupUtil;->access$000()F

    move-result v1

    invoke-static {v1}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/util/PopupUtil;->access$100()F

    move-result v2

    invoke-static {v2}, Lcom/hangame/hsp/util/BitmapUtil;->dipToPx(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$parentView:Landroid/widget/RelativeLayout;

    const-string v1, "popup_background"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/util/PopupUtil$1;->val$popUp:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lcom/hangame/hsp/util/PopupUtil;->push(Landroid/widget/PopupWindow;)V

    return-void
.end method
