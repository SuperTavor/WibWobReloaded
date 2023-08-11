.class Lcom/hangame/hsp/nelo/NeloService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/nelo/NeloService;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/nelo/NeloService;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/nelo/NeloService$1;->this$0:Lcom/hangame/hsp/nelo/NeloService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/nelo/NeloService;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/nelo/NeloService;->access$100()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/nelo/NeloService;->access$200(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
