.class Lcom/hangame/hsp/sns/view/HSPSnsFeedView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$4;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$4;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$4;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-static {v2}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->access$300(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->access$400(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
