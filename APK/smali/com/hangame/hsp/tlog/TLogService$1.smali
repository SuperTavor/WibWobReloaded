.class Lcom/hangame/hsp/tlog/TLogService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/tlog/TLogService;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/tlog/TLogService;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/tlog/TLogService$1;->this$0:Lcom/hangame/hsp/tlog/TLogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "http://api-logncrash.cloud.toast.com/logncrash/v1/log"

    invoke-static {}, Lcom/hangame/hsp/tlog/TLogService;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/tlog/TLogService;->access$100(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
