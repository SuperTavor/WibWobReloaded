.class Lcom/hangame/hsp/HSPUtil$7$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPUtil$7;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$7;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$7$3;->this$0:Lcom/hangame/hsp/HSPUtil$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7$3;->this$0:Lcom/hangame/hsp/HSPUtil$7;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$7;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
