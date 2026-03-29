from fastapi import FastAPI
from app.core.config import settings

app = FastAPI(
    title=settings.APP_NAME,
    debug=settings.DEBUG,
    openapi_url=f"{settings.API_V1_STR}/openapi.json",
    docs_url=f"{settings.API_V1_STR}/docs",
)


@app.get("/")
async def root():
    return {"message": "Cooking API", "version": "0.1.0"}


@app.get("/health")
async def health():
    return {"status": "healthy"}
