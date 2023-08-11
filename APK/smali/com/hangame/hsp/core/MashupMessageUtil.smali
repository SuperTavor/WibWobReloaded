.class public final Lcom/hangame/hsp/core/MashupMessageUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MashupMessageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(LXDR/IMessage;[B)V
    .locals 4

    const-string v0, "MashupMessageUtil"

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/core/HSPInternalState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, LXDR/IMessage;->Load([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MashupMessageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in load()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;Z)V

    return-void
.end method

.method public static makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;Z)V

    return-void
.end method

.method public static request(LXDR/IMessage;JLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;JLcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;Z)V

    return-void
.end method

.method public static request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;Z)V

    return-void
.end method

.method public static request(Ljava/lang/Object;LXDR/IMessage;JLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-string v0, "MashupMessageUtil"

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/core/HSPInternalState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, LXDR/IMessage;->Save()[B

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/hangame/hsp/mashup/HSPMashupService;->request(Ljava/lang/Object;[BJLcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MashupMessageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in save()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "LOGINSERVICE"

    const/16 v2, 0x1009

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public static request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;Z)V

    return-void
.end method

.method public static request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;Z)V
    .locals 4

    const-string v0, "MashupMessageUtil"

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/core/HSPInternalState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, LXDR/IMessage;->Save()[B

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/hangame/hsp/mashup/HSPMashupService;->request(Ljava/lang/Object;[BLcom/hangame/hsp/core/HSPResHandler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MashupMessageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in save()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "LOGINSERVICE"

    const/16 v2, 0x1009

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
