.class final Lcom/hangame/hsp/server/HSPBIPService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$logType:Ljava/lang/String;

.field final synthetic val$parameterMap:Ljava/util/Map;

.field final synthetic val$serviceNo:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$serviceNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$userKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$logType:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$parameterMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$serviceNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$userKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$logType:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/server/HSPBIPService$1;->val$parameterMap:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/server/HSPBIPService;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
