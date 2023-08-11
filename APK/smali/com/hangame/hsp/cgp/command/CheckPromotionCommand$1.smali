.class Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$1;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CheckPromotionCommand"

    const-string v1, "Promotion Timeout : True"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$1;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$002(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;Z)Z

    return-void
.end method
