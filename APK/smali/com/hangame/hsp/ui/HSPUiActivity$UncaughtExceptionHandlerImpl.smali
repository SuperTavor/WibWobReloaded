.class Lcom/hangame/hsp/ui/HSPUiActivity$UncaughtExceptionHandlerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/HSPUiActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/HSPUiActivity$UncaughtExceptionHandlerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HSPUiActivity"

    const-string v1, "uncaughtException"

    invoke-static {v0, v1, p2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
