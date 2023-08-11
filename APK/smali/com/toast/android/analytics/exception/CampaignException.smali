.class public Lcom/toast/android/analytics/exception/CampaignException;
.super Ljava/lang/Exception;


# instance fields
.field mErrorCode:I

.field mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/toast/android/analytics/exception/CampaignException;->mErrorCode:I

    iput-object p2, p0, Lcom/toast/android/analytics/exception/CampaignException;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/exception/CampaignException;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/exception/CampaignException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
