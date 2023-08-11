.class public Lcom/hangame/hsp/cgp/response/CGPServerInfo;
.super Ljava/lang/Object;


# instance fields
.field private cgpServerUrl:Ljava/lang/String;

.field private cgpWasUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpServerUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpWasUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCgpServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCgpWasUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpWasUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCgpServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpServerUrl:Ljava/lang/String;

    return-void
.end method

.method public setCgpWasUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpWasUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CGPServerInfo [cgpServerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cgpWasUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->cgpWasUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
