.class final Lcom/hangame/hsp/referrer/InstallReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/referrer/InstallReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterLogin()V
    .locals 2

    const-string v0, "InstallReceiver"

    const-string v1, "ReferrerInfo onAfterLogin called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/referrer/InstallReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/referrer/InstallReceiver;->access$000(Landroid/content/Context;)V

    return-void
.end method
