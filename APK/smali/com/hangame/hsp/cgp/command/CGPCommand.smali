.class public abstract Lcom/hangame/hsp/cgp/command/CGPCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mContext:Ljava/lang/Object;

.field protected mHttpRequest:Lcom/hangame/hsp/cgp/request/HttpRequest;

.field protected mRequest:Ljava/lang/Object;

.field protected mTransactionId:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/cgp/command/CGPCommand;->mRequest:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/command/CGPCommand;->mContext:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/hangame/hsp/cgp/command/CGPCommand;->mTransactionId:J

    return-void
.end method


# virtual methods
.method public checkRequestInstance()Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CGPCommand;->mRequest:Ljava/lang/Object;

    instance-of v0, v0, Lcom/hangame/hsp/cgp/request/HttpRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CGPCommand;->mRequest:Ljava/lang/Object;

    check-cast v0, Lcom/hangame/hsp/cgp/request/HttpRequest;

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/CGPCommand;->mHttpRequest:Lcom/hangame/hsp/cgp/request/HttpRequest;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract run()V
.end method
